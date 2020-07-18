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
import collections

ProjectService = Blueprint("ProjectService", __name__,
                           url_prefix=EndPoint + "/v1")

# Access private
# Require / "access token"
# Db Project
# Desc To display all user in Teamproject
@ProjectService.route("/userproject", methods=["GET"])
@token_required
def ListAllprojectUser(current_user):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 200
    try:
        with connection.cursor() as cursor:
            # Read a single record
            sql = (
                "SELECT project.project_public_id , project_name , status_name  , teamproject.teamproject_public_id , teamproject_name from project "
                "  LEFT JOIN teamproject_has_project on teamproject_has_project.project_public_id = project.project_public_id "
                "  LEFT JOIN teamproject on teamproject_has_project.teamproject_public_id = teamproject.teamproject_public_id"
                "  LEFT JOIN teamproject_has_user on  teamproject_has_user.teamproject_public_id = teamproject.teamproject_public_id "
                " LEFT JOIN status on status.status_id = teamproject_has_project.status_id"
                " WHERE teamproject_has_user.user_public_id = %s"
            )

            cursor.execute(sql, (public_id,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify({"Status": "success", "projectList": rv}), 200
    except Exception as e:
        return jsonify({"Status": "Error", "projectList": e}), 500


# Access private
# Require / "access token"
# Db Project
# Desc CountProjectUser
@ProjectService.route("/countuserproject", methods=["GET"])
@token_required
def CountStatusUserProject(current_user):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 200
    try:
        with connection.cursor() as cursor:
            # Read a single record
            sql = (
                "  SELECT COUNT(teamproject_has_project.project_public_id) as count , status.status_name , teamproject_has_project.status_id"
                "  From project "
                "  LEFT JOIN teamproject_has_project on teamproject_has_project.project_public_id = project.project_public_id "
                " LEFT JOIN teamproject on teamproject_has_project.teamproject_public_id = teamproject.teamproject_public_id"
                " LEFT JOIN teamproject_has_user on  teamproject_has_user.teamproject_public_id = teamproject.teamproject_public_id "
                " LEFT JOIN status on status.status_id = teamproject_has_project.status_id "
                "    WHERE teamproject_has_user.user_public_id = %s "
                "   GROUP BY teamproject_has_project.status_id"
            )

            cursor.execute(sql, (public_id,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify({"Status": "success", "projectCount": rv}), 200
    except Exception as e:
        return jsonify({"Status": "Error", "projectList": e}), 500

# Access private
# Require / "access token"
# Db Project
# Desc display UserProjectbyStatus params
@ProjectService.route("/userprojectstatus/<status_id>", methods=["GET"])
@token_required
def ListProjectByStatus(current_user, status_id):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 200

    if status_id is None:
        return jsonify({"Status": " Failed ", "message": "Error Status not"}), 500

    try:
        with connection.cursor() as cursor:
            # Read a single record
            sql = (
                "  SELECT project.project_public_id , project_name , status_name  , teamproject.teamproject_public_id , teamproject_name from project "
                "  LEFT JOIN teamproject_has_project on teamproject_has_project.project_public_id = project.project_public_id "
                "  LEFT JOIN teamproject on teamproject_has_project.teamproject_public_id = teamproject.teamproject_public_id"
                "  LEFT JOIN teamproject_has_user on  teamproject_has_user.teamproject_public_id = teamproject.teamproject_public_id "
                "  LEFT JOIN status on status.status_id = teamproject_has_project.status_id"
                "  WHERE teamproject_has_user.user_public_id = %s AND teamproject_has_project.status_id = %s"
            )

            cursor.execute(sql, (public_id, status_id,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify({"Status": "success", "projectList": rv}), 200
    except Exception as e:
        return jsonify({"Status": "Error", "projectList": e}), 500


# Access private
# Require / "access token"
# Db Project
# Desc To display all userProject With Count
@ProjectService.route("/userproject/countbytype", methods=["GET"])
@token_required
def CountProjectByGroup(current_user):
    try:
        public_id = current_user["public_id"]
    except Exception as e:
        return jsonify({"Status": "Failed", "message": "Error DecodeId" + str(e)}), 500
    try:
        with connection.cursor() as cursor:
            # Read a single record
            sql = (
                " SELECT project.project_public_id , project_name   , teamproject.teamproject_public_id , teamproject_name  , teamproject_has_project.status_id ,status.status_name from project "
                " LEFT JOIN teamproject_has_project on teamproject_has_project.project_public_id = project.project_public_id "
                " LEFT JOIN teamproject on teamproject_has_project.teamproject_public_id = teamproject.teamproject_public_id"
                " LEFT JOIN teamproject_has_user on  teamproject_has_user.teamproject_public_id = teamproject.teamproject_public_id "
                " LEFT JOIN project_has_job on project_has_job.project_public_id = project.project_public_id"
                " LEFT JOIN job on project_has_job.job_public_id = job.job_public_id"
                " LEFT JOIN status on status.status_id = teamproject_has_project.status_id"
                " WHERE teamproject_has_user.user_public_id = %s  GROUP BY project_public_id"
            )
            cursor.execute(sql, (public_id))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            arr = dict()
            for r in rv:
                count = 0
                val = []
                project = r["status_name"]
                arr[project] = {}
                for a in rv:
                    if project == a["status_name"]:
                        count = count + 1 
                        val.append(a)
                        arr[project] = val  
            # return jsonify(rv)
            return jsonify({"Status": "Success", "projectList:": arr}), 200
    except Exception as e :
        return jsonify({"Status": "Failed", "message": "Error " +str( e)}), 500
    

# Access private
# Require / "access token"
# Db Project
# Desc ProjectDetails
@ProjectService.route("/projectdetails/<project_id>", methods=["GET"])
@token_required
def Listproject(current_user,project_id):
    try:
        user_public_id = current_user["public_id"]
    except Exception as e:
        return jsonify({"Status": "Failed", "message": "Error DecodeId" + str(e)}), 500
    with connection.cursor() as cursor:
        # Read a single record
        sql = ("SELECT * from project LEFT JOIN status on status.status_id = project.status_id "
               "LEFT JOIN projectdetails on projectdetails.project_public_id = project.project_public_id"
                "WHERE project.project_public_id = %s" )
        cursor.execute(sql,(project_id,))
        result = cursor.fetchall()
        cursor.close()
        return jsonify({"Status" : "success" ,"projectList": result } ) , 200

# Access private
# Require / "access token"
# Db Project
# Desc To display all project
# @ProjectService.route("/project", methods=["GET"])
# @token_required
# def Listproject():
#     with connection.cursor() as cursor:
#         # Read a single record
#         sql = "SELECT project_id , project_name , status_name, project_created from project LEFT JOIN status on status.status_id = project.status_id"
#         cursor.execute(sql)
#         result = cursor.fetchall()
#         cursor.close()

#         return jsonify({"Status" : "success" ,"projectList": result } ) , 200

# Access private
# Require / "access token"
# Db User_has_project
# Desc To check all current project
# @ProjectService.route("/userproject", methods=["GET"])
# @token_required
# def getUserProject(current_user):
#     try:
#         public_id = current_user.public_id
#         username = current_user.username
#         user_id = current_user.id
#     except:
#         return jsonify({"Status" : "Failed" ,"message": "Error DecodeId" } ) , 200
#     try :
#         with connection.cursor() as cursor:
#             sql = ("select  userhasproject_id , project_name , project_created , status_name from user_has_project LEFT JOIN project on project.project_id = user_has_project.project_id LEFT JOIN status on status.status_id = project.status_id where user_has_project.user_id = '%s'")
#             cursor.execute(sql ,(  user_id ,  ))
#             result = cursor.fetchall()
#             cursor.close()
#             return jsonify({"Status": "success", "projectList": result}), 200
#     except:
#         return jsonify({"Status": "Failed", "message": "ConenctionErrorWithmysql"}), 200


# Access private
# Require / "userId" : Int userId / "projectId" :  Int : projectId
# Db User_has_project
# Desc To add user project
# @ProjectService.route("/userproject", methods=["POST"])
# @token_required
# def AdduserProject(current_user):
#     data = request.get_json()
#     if not data:
#         return jsonify({"Status": "Failed", "message": " UserId,ProjectId not include "}), 200
#     try:
#         userId = data["userId"]
#         projectId = data["projectId"]
#     except:
#         return jsonify({"Status": "Failed", "message": " UserId or ProjectId not include "}), 200
#     try:
#         with connection.cursor() as cursor:
#             sql = ("SELECT id from user where id = '%s'")
#             cursor.execute(sql, (userId,))
#             if len(cursor.fetchall()) < 1:
#                 cursor.close()
#                 return jsonify({"Status": "Failed", "message": " Invalide UserId"}), 200
#             sql = ("SELECT project_id from project where project_id = '%s'")
#             cursor.execute(sql, (projectId,))
#             if len(cursor.fetchall()) < 1:
#                 cursor.close()
#                 return jsonify({"Status": "Failed", "message": " Invalide ProjectId"}), 200
#     except Exception as e:
#         print(e)
#         return jsonify({"Status": "Failed", "message": " Error Connection"}), 200
#     try :
#         with connection.cursor() as cursor:
#             # Read a single record
#             sql = ("INSERT INTO user_has_project (user_id , project_id) VALUES (%s,%s)")
#             cursor.execute(sql ,(  userId , projectId ,  ))
#             connection.commit()
#             cursor.close()
#             return jsonify({"Status": "success", "Message": "success"}), 200
#     except:
#         return jsonify({"Status" : "Failed" ,"message": "ConenctionErrorWithmysql" } ) , 200
