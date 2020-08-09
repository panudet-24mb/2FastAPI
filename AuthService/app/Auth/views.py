from flask import Flask, request, jsonify, make_response ,Blueprint
import uuid
from werkzeug.security import generate_password_hash, check_password_hash
import jwt
import datetime
from functools import wraps
from app.Auth.models import User
from app import Secret_key, connection
AuthService = Blueprint('AuthService', __name__)

@AuthService.route('/login', methods=['POST'] )
def login():
    data = request.get_json()
    if not data or not data['username'] or not data['password']:
        return jsonify({ "Code" : "401_1" , 'Error' : "Username or password is empty " }  ) , 401
    with connection.cursor() as cursor:
        sql = "SELECT * FROM user where user.username = %s"
        cursor.execute(sql, (data['username'],))
        rv = cursor.fetchone()
        if not rv:
            return jsonify({"Code": "401_2", 'Error': "Username is incorrect "}), 401
        connection.commit()
        cursor.close()
    if not rv["username"] :
         return jsonify({"Code": "401_2", 'Error': "Username is incorrect "}), 401
    try:
        if check_password_hash(rv["password"], data['password']):
            token = jwt.encode({'public_id' : rv["public_id"],'user_id' :rv["id"] ,'exp' : datetime.datetime.utcnow() + datetime.timedelta(minutes=2440)}, Secret_key)
            return jsonify({'token':token.decode('UTF-8')}), 200
        else:
            return jsonify({"Code": "401_2", 'Error': "Password is incorrect "}), 401
    except Exception as e:
        return jsonify({"Code": "401_2", 'Error': "Error " +str(e)}), 500
        

@AuthService.route('/login/customers', methods=['POST'] )
def login_customers():
    data = request.get_json()
    if not data or not data['username'] or not data['password']:
        return jsonify({ "Code" : "401_1" , 'Error' : "Username or password is empty " }  ) , 401
    with connection.cursor() as cursor:
        sql = "SELECT * FROM usercustomers where usercustomers.usercustomers_userkey = %s"
        cursor.execute(sql, (data['username'],))
        rv = cursor.fetchone()
        if not rv:
            return jsonify({"Code": "401_2", 'Error': "Username is incorrect "}), 401
        connection.commit()
        cursor.close()
    if not rv["usercustomers_userkey"] :
         return jsonify({"Code": "401_2", 'Error': "Username is incorrect "}), 401
    try:
        if check_password_hash(rv["usercustomers_passkey"], data['password']):
            token = jwt.encode({'public_id' : rv["usercustomers_public_id"],'usercustomers_id' :rv["usercustomers_id"] ,'exp' : rv["usercustomers_exp"] , 'customers_public_id' : rv["customers_public_id"]}, Secret_key)
            return jsonify({'token':token.decode('UTF-8')}), 200
        else:
            return jsonify({"Code": "401_2", 'Error': "Password is incorrect "}), 401
    except Exception as e:
        return jsonify({"Code": "401_2", 'Error': "Error " +str(e)}), 500