from flask import Flask, request, jsonify, make_response, Blueprint
import uuid
from flask_sqlalchemy import SQLAlchemy
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
def ListTeamproject(current_user, public_project):
    try:
        public_id = current_user.public_id
        username = current_user.username
        user_id = current_user.id
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 200
    with connection.cursor() as cursor:
        # Read a single record
        sql = (
            " SELECT job.job_name , job.job_public_id , status.status_name , teamproject.teamproject_public_id ,job.job_created from job LEFT JOIN project_has_job ON job.job_public_id = project_has_job.job_public_id "
            " LEFT JOIN status on status.status_id = job.status_id "
            " LEFT JOIN teamproject on teamproject.teamproject_public_id = project_has_job.teamproject_public_id"
            " LEFT JOIN teamproject_has_user on teamproject_has_user.teamproject_public_id = teamproject.teamproject_public_id"
            " WHERE project_has_job.project_public_id = %s and teamproject_has_user.user_public_id = %s"
        )
        cursor.execute(sql, (public_project, public_id))
        rv = cursor.fetchall()
        connection.commit()
        cursor.close()
        return jsonify({"Status": "success", "projectList": rv}), 200

    # Inactive - สร้าง JOB แต่ยังไม่ได้ให้เข้าใช้งาน
    # Active - เปิด Job
    # Inprogess - ช่างมีการกรอกฟอร์มบางแล้ว ----> ปิดงาน
    # Pending - กำลังตรวจสอบ // หัวหน้าช่าง Confirm
    # Pending_client  - ให้ลูกค้ายืนยัน
    # Complete - จบ JOb
    # Piority Deadline

