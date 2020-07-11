from flask import Flask, request, jsonify, make_response, Blueprint
import uuid
from flask_sqlalchemy import SQLAlchemy
from werkzeug.security import generate_password_hash, check_password_hash
from werkzeug.datastructures import CombinedMultiDict
import jwt
import json
from functools import wraps
from app.Client.models import *
from app import Secret_key, EndPoint , connection
import urllib 
import os
import requests
import pymysql
import collections

ClientService = Blueprint("ClientService", __name__, url_prefix=EndPoint + "/v1")

def token_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        token = None
        if "x-access-token" in request.headers:
            token = request.headers["x-access-token"]

        if not token:
            return jsonify({"message": "Token is missing!"}), 401

        try:
            data = jwt.decode(token, Secret_key)
            current_user = User.query.filter_by(public_id=data["public_id"]).first()
        except Exception as e:

            return jsonify({"message": "Invalid Token"}), 401

        return f(current_user, *args, **kwargs)

    return decorated

@ClientService.route("/", methods=["GET"])
def DefaultGateway():
    return jsonify({"Code": "0001", "Message": "Welcome to 2UserService"})


@ClientService.route("/GetUserData", methods=["GET"])
@token_required
def ClientCheckvalidJWT(current_user):
    public_id = current_user.public_id
    username = current_user.username
    user_id = current_user.id
    return jsonify({"public_id": public_id,"user_id" : user_id ,"username": username})

@token_required
@ClientService.route('/GetUserData/<int:id>' , methods=["GET"])
def show_user(id):
    if not id :
        return jsonify ({"Code" : "001" , "Message":"id is empty"})
    try : 
        user = User.query.filter_by(id=id).first()
        userId = user.id
        publicId = user.public_id
        companyId = user.company_id
        roleId = user.role_id
        username = user.username
        company = Company.query.filter_by(company_id=companyId).first()
        companyName = company.company_name
        role = Role.query.filter_by(role_id=roleId).first()
        rolename = role.role_name
        with connection.cursor() as cursor:
            sql = "SELECT userdetails_email ,userdetails_firstname , userdetails_lastname ,userdetails_phone , userdetails_position  FROM usersdetails LEFT JOIN user on user.public_id = usersdetails.user_public_id "\
                  " WHERE user.public_id = %s"
            cursor.execute(sql, (publicId,))
            rv = cursor.fetchall()
            cursor.close()
    
            return jsonify({"userId": userId , 
                            "username" :username,
                            "publicId" : publicId,
                            "companyId" : companyId,
                            "companyName" : companyName,
                            "roleId" : roleId,
                            "rolename" : rolename
                            } ,
                           {"userdetails" :
                               rv} )
    except Exception as e:
        print (e)
        return jsonify ({"Code" : "002" , "Message":"User Not found"})