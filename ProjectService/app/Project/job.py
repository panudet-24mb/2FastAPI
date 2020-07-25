from flask import Flask, request, jsonify, make_response, Blueprint
import uuid
from werkzeug.security import generate_password_hash, check_password_hash
from werkzeug.datastructures import CombinedMultiDict
import jwt
import json
from functools import wraps
from app import Secret_key, EndPoint, connection
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
@JobService.route("/userjob/<public_project>", methods=["GET"])
@token_required
def ListAllProject(current_user, public_project):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 200
    with connection.cursor() as cursor:
        # Read a single record
        sql = (
            " SELECT job.job_name , job.job_public_id , status.status_name ,priority.priority_name, teamproject.teamproject_public_id ,job.job_created from job "
             "LEFT JOIN project_has_job ON job.job_public_id = project_has_job.job_public_id "
            " LEFT JOIN status on status.status_id = job.status_id "
             "LEFT JOIN priority on priority.priority_id = job.priority_id"
            " LEFT JOIN teamproject on teamproject.teamproject_public_id = project_has_job.teamproject_public_id"
            " LEFT JOIN teamproject_has_user on teamproject_has_user.teamproject_public_id = teamproject.teamproject_public_id"
            " WHERE project_has_job.project_public_id = %s and teamproject_has_user.user_public_id = %s"
        )
        cursor.execute(sql, (public_project, public_id))
        rv = cursor.fetchall()
        connection.commit()
        cursor.close()
        return jsonify({"Status": "success", "projectList": rv}), 200


# Access private
# Require / "access token"
# Db Project
# Desc To display all user in Teamproject
@JobService.route("/userjob/<public_project>/group", methods=["GET"])
@token_required
def ListAllProjectByGroup(current_user, public_project):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 500
    try:
        with connection.cursor() as cursor:
            # Read a single record
            sql = (
                " SELECT job.job_name , job.job_public_id , status.status_name , job.status_id,priority.priority_name,teamproject.teamproject_public_id ,job.job_created from job LEFT JOIN project_has_job ON job.job_public_id = project_has_job.job_public_id "
                 "LEFT JOIN priority on priority.priority_id = job.priority_id"
                " LEFT JOIN status on status.status_id = job.status_id "
                " LEFT JOIN teamproject on teamproject.teamproject_public_id = project_has_job.teamproject_public_id"
                " LEFT JOIN teamproject_has_user on teamproject_has_user.teamproject_public_id = teamproject.teamproject_public_id"
                " WHERE project_has_job.project_public_id = %s and teamproject_has_user.user_public_id = %s ORDER BY status.status_id"
            )
            cursor.execute(sql, (public_project, public_id))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            arr = dict()
            for r in rv:
                val = []
                status = r["status_name"]
                arr[status] = {}
                for a in rv:
                    if status == a["status_name"]:
                        val.append(a)
                        arr[status] = val
            return jsonify({"Status": "Success", "projectList": arr}), 200
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 500


# Access private
# Require / "access token"
# Db Project
# Desc CountJob user by Type < proejct ID >
@JobService.route("/userjob/<projectid>/count", methods=["GET"])
@token_required
def CountStatusUserJob(current_user,projectid):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 200
    try:
        with connection.cursor() as cursor:
            # Read a single record
            sql = (
             "   SELECT COUNT(job.job_public_id) as count , status.status_name , job.status_id from job"
             "   LEFT JOIN project_has_job on project_has_job.job_public_id = job.job_public_id"
             "   LEFT JOIN status on status.status_id = job.status_id"
               " LEFT JOIN teamproject on project_has_job.teamproject_public_id = teamproject.teamproject_public_id"
               " Left join teamproject_has_user on teamproject_has_user.teamproject_public_id = teamproject.teamproject_public_id"
               " LEFT JOIN user on teamproject_has_user.user_public_id = user.public_id"
               " WHERE teamproject_has_user.user_public_id = %s and project_has_job.project_public_id = %s "
               " GROUP BY job.status_id"
            )

            cursor.execute(sql, (public_id,projectid,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify({"Status": "success", "projectCount": rv}), 200
    except Exception as e:
        return jsonify({"Status": "Error", "projectList": e}), 500

# Access private
# Require / "access token"
# Db Project
# Desc Desc job
@JobService.route("/userjob/details/<public_job>", methods=["GET"])
@token_required
def descjobdetails(current_user,public_job):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 200
    try:
        with connection.cursor() as cursor:
            # Read a single record
            sql = (" SELECT * from job LEFT JOIN status on status.status_id = job.status_id LEFT JOIN jobdetails on jobdetails.job_public_id = job.job_public_id WHERE job.job_public_id = %s" )
            cursor.execute(sql, (public_id,public_job,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify({"Status": "success", "jobList": rv}), 200
    except Exception as e:
        return jsonify({"Status": "Error", "projectList": e}), 500
# Access private
# Require / "access token"
# Db Project
# ChangeJobStatus
@JobService.route("/userjob/<public_job>/status/<parameter>", methods=["GET"])
@token_required
def changejobStatus(current_user,public_job,parameter):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 200
    if parameter is None:
        return jsonify({"Status": "Failed", "message": "Error Parameter???"}), 200
    if public_job is None:
        return jsonify({"Status": "Failed", "message": "Error public_job???"}), 200
    try:
        with connection.cursor() as cursor:
            # Read a single record
            sql = (" UPDATE job SET job.status_id = %s WHERE job.job_public_id = %s" )
            cursor.execute(sql, (public_id,parameter,public_job,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify({"Status": "success", "jobList": rv}), 200
    except Exception as e:
        return jsonify({"Status": "Error", "projectList": e}), 500