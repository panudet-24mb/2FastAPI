
from functools import wraps
from flask import Flask, request, jsonify, make_response, Blueprint
import uuid 
from flask_sqlalchemy import SQLAlchemy
import jwt
import json
from functools import wraps
from app import Secret_key, EndPoint
import urllib 
import os
import requests
from app.Project.model import User


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
            print(e)

            return jsonify({"message": "Invalid Token"}), 401

        return f(current_user, *args, **kwargs)

    return decorated