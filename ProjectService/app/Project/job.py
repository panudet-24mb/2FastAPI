from flask import Flask, request, jsonify, make_response, Blueprint
import uuid 
from flask_sqlalchemy import SQLAlchemy
from werkzeug.security import generate_password_hash, check_password_hash
from werkzeug.datastructures import CombinedMultiDict
import jwt
import json
from functools import wraps
from app import Secret_key, EndPoint , connection
import urllib 
import os
import requests
from app.Project.helper.helperFunc import token_required
import pymysql
import collections

JobService = Blueprint("JobService", __name__, url_prefix=EndPoint + "/v1")

# Access private
# Require / "access token" 
# Db Project
# Desc To display all user in Teamproject
@JobService.route("/projectjob/<public_project>", methods=["GET"])
@token_required
def ListTeamproject(current_user , public_project):
    try:
        public_id = current_user.public_id
        username = current_user.username
        user_id = current_user.id
    except:
        return jsonify({"Status" : "Failed" ,"message": "Error DecodeId" } ) , 200
    with connection.cursor() as cursor:
        # Read a single record
      sql =    " SELECT * from job LEFT JOIN   teamproject_has_job ON job.job_id = teamproject_has_job.job_id " \
               " LEFT JOIN teamproject_has_project on"  \
               " teamproject_has_project.teamprojecthasproject_public_id = teamproject_has_job.teamprojecthasproject_public_id" \
               " WHERE teamproject_has_project.teamprojecthasproject_public_id = %s"
      cursor.execute(sql, (public_project,))
      rv = cursor.fetchall()
      cursor.close()
      return jsonify({"Status": "success", "projectList": rv}), 200