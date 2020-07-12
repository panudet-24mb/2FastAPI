from flask import Flask, request, jsonify, make_response, Blueprint , flash, redirect, url_for , send_from_directory
import uuid
from flask_sqlalchemy import SQLAlchemy
from werkzeug.security import generate_password_hash, check_password_hash
from werkzeug.datastructures import CombinedMultiDict
from werkzeug.utils import secure_filename
import jwt
import json
from functools import wraps
from app.Client.models import *
from app import Secret_key, EndPoint , connection ,UPLOAD_FOLDER ,ALLOWED_EXTENSIONS
import urllib 
import os
import requests
import pymysql
import collections
import datetime
import uuid

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
            sql = "SELECT usersdetails_email ,usersdetails_firstname , usersdetails_lastname ,usersdetails_phone , usersdetails_position ,usersdetails_avatar FROM usersdetails LEFT JOIN user on user.public_id = usersdetails.user_public_id "\
                  " WHERE user.public_id = %s"
            cursor.execute(sql, (publicId,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
    
            return jsonify({"userId": userId , 
                            "username" :username,
                            "publicId" : publicId,
                            "companyId" : companyId,
                            "companyName" : companyName,
                            "roleId" : roleId,
                            "rolename" : rolename
                            } ,
                           {"usersdetails" :
                               rv} )
    except Exception as e:
        print (e)
        return jsonify ({"Code" : "002" , "Message":"User Not found"})
    
def allowed_file(filename):
    return '.' in filename and \
           filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS
           
@token_required
@ClientService.route('/useravatar/<public_id>' , methods=["POST"])
def update_useravatar(public_id):
    if not public_id :
        return jsonify ({"status" : "error" , "message":"Missing PublicId"}) , 404
    try : 
        with connection.cursor() as cursor:
            sql = "SELECT * FROM user where user.public_id = %s"
            cursor.execute(sql, (public_id,))
            rv = cursor.fetchall()
            if not rv:
                return jsonify ({"status" : "error" , "message":"Failed to find users"}) , 404
            connection.commit()
            cursor.close()
    except :
        return jsonify ({"status" : "error" , "message":"Connection Error "}) , 500
    try:
        if request.method == 'POST':
            if 'file' not in request.files:
                return jsonify ({"Code" : "002" , "Message":"NO files to Upload"})
            file = request.files['file']
            if file.filename == '':
                return jsonify ({"Code" : "002" , "Message":"No selected file"})
            if file and allowed_file(file.filename):
                filename = secure_filename(file.filename)
                extension =  filename.split('.')[1]
                newfilename = 'publicid-' + public_id+('-') + 'avatar.' + extension
                file.save(os.path.join(UPLOAD_FOLDER, newfilename))
            with connection.cursor() as cursor:
                sql = "UPDATE usersdetails SET usersdetails_avatar = %s WHERE user_public_id = %s"
                cursor.execute(sql, (newfilename,public_id,))
                connection.commit()
                cursor.close()
                return jsonify(filename=newfilename),200
        
    except:
        return jsonify ({"Code" : "002" , "Message":"Failed to UpdateData Avatar"}),500
    

@token_required
@ClientService.route('/useravatar/<public_id>' , methods=["GET"])
def get_useravatar(public_id):
    if not public_id :
        return jsonify ({"status" : "error" , "message":"Missing PublicId"}) , 404
    try : 
        with connection.cursor() as cursor:
            sql = "SELECT usersdetails_avatar FROM usersdetails where usersdetails.user_public_id = %s"
            cursor.execute(sql, (public_id,))
            rv = cursor.fetchone()
            avatar = rv['usersdetails_avatar']
            if not rv:
                return jsonify ({"status" : "error" , "message":"Failed to find users"}) , 404
            connection.commit()
            cursor.close()
            return redirect(url_for('static', filename='img/' + avatar), code=301)
    except  Exception as e :
        return jsonify ({"Status" : "error" , "message":"Can't GET usersAvatar "}) , 500
    

        
                
        
                
                

