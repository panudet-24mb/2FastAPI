from flask import Flask, request, jsonify, make_response, Blueprint , flash, redirect, url_for , send_from_directory
import uuid
from werkzeug.security import generate_password_hash, check_password_hash
from werkzeug.datastructures import CombinedMultiDict
from werkzeug.utils import secure_filename
import jwt
import json
from functools import wraps
from app import Secret_key, EndPoint , connection ,UPLOAD_FOLDER ,ALLOWED_EXTENSIONS
import urllib 
import os
import requests
import pymysql
import collections
import datetime
import uuid
from app.Client.helper.helperFunc import token_required

ClientService = Blueprint("ClientService", __name__, url_prefix=EndPoint + "/v1")


@ClientService.route("/", methods=["GET"])
def DefaultGateway():
    return jsonify({"Code": "0001", "Message": "Welcome to 2UserService"})


@ClientService.route("/GetUserData", methods=["GET"])
@token_required
def ClientCheckvalidJWT(current_user):
    public_id = current_user["public_id"]
    user_id = current_user["user_id"]
    return jsonify({"public_id": public_id,"user_id" : user_id })

@ClientService.route("/GetUserData/Customers", methods=["GET"])
@token_required
def ClientCheckvalidJWT_customers(current_user):
    public_id = current_user["public_id"]
    usercustomers_id = current_user["usercustomers_id"]
    customers_public_id = current_user["customers_public_id"]
    return jsonify({"public_id": public_id,"user_id" : usercustomers_id ,"customers_public_id" : customers_public_id })

@ClientService.route('/GetUserData/details' , methods=["GET"])
@token_required
def show_user(current_user,):
    try : 
        with connection.cursor() as cursor:
            public_id = current_user["public_id"]
            print(public_id)
            sql =( "SELECT company_name , username,usersdetails_firstname ,usersdetails_lastname,usersdetails_avatar,usersdetails_email,usersdetails_phone,usersdetails_position  FROM usersdetails "
                  "LEFT JOIN user on user.public_id = usersdetails.user_public_id "
                  "LEFT JOIN company on company.company_id = user.company_id"
                  " WHERE usersdetails.user_public_id = %s")
            cursor.execute(sql, (public_id,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify( {"usersdetails" :rv} )
    except Exception as e:
        print (e)
        return jsonify ({"Code" : "002" , "Message":"User Not found"})
    
@ClientService.route('/GetUserData/Customers/details' , methods=["GET"])
@token_required
def show_user_customers(current_user,):
    try : 
        with connection.cursor() as cursor:
            public_id = current_user["public_id"]
            sql =( " SELECT customers_address,customers_city,customers_creator_id,customers_enddate,customers_name,customers_postcode,status_name FROM custormers "
                    " LEFT JOIN usercustomers on usercustomers.customers_public_id = custormers.customers_public_id "
                    " LEFT JOIN status on status.status_id = custormers.status_id"
                    " WHERE usercustomers.usercustomers_public_id = %s")
            cursor.execute(sql, (public_id,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify( {"usersdetails" :rv} )
    except Exception as e:
        print (e)
        return jsonify ({"Code" : "002" , "Message":"User Not found"})
    
@ClientService.route('/GetUserData/<public_id>/details' , methods=["GET"])
@token_required
def show_user_by_publicId(current_user,public_id):
    try : 
        with connection.cursor() as cursor:
            sql =( "SELECT company_name , username,usersdetails_firstname ,usersdetails_lastname,usersdetails_avatar,usersdetails_email,usersdetails_phone,usersdetails_position  FROM usersdetails "
                  "LEFT JOIN user on user.public_id = usersdetails.user_public_id "
                  "LEFT JOIN company on company.company_id = user.company_id"
                  " WHERE usersdetails.user_public_id = %s")
            cursor.execute(sql, (public_id,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify( {"usersdetails" :rv} )
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
    

        

