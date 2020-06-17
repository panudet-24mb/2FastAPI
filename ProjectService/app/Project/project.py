from flask import Flask, request, jsonify, make_response, Blueprint
import uuid 
from flask_sqlalchemy import SQLAlchemy
from werkzeug.security import generate_password_hash, check_password_hash
from werkzeug.datastructures import CombinedMultiDict
import jwt
import json
from functools import wraps
from app import Secret_key, EndPoint
import urllib 
import os
import requests
from app.Project.helper.helperFunc import token_required
from app.Project.model import *

ProjectService = Blueprint("ProjectService", __name__, url_prefix=EndPoint + "/v1")


@ProjectService.route("/project", methods=["GET"])
@token_required
def Listproject(current_user):
    query = Project.query.join( Status, Project.status_id == Status.id ).all()
    result = projects_schema.dump(query)
    
    

    return jsonify({"Project" : result})