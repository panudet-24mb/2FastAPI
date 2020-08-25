from flask import Flask, request, jsonify, make_response, Blueprint, flash, redirect, url_for, send_from_directory
import uuid
from werkzeug.security import generate_password_hash, check_password_hash
from werkzeug.datastructures import CombinedMultiDict
from werkzeug.utils import secure_filename
import jwt
import json
from functools import wraps
from app.env.config import Secret_key, EndPoint
from app.Database.db import connection
import urllib
import os
import requests
import pymysql
import collections
import datetime
import uuid
from app.Customer.helper.helperFunc import token_required
from flask_paginate import Pagination, get_page_parameter

ProjectService = Blueprint("ProjectService", __name__,
                           url_prefix=EndPoint + "/v1")


@ProjectService.route("/Customer/Project/<publicProject>/details", methods=["GET"])
@token_required
def Customers_project_id(current_user, publicProject):
    try:
        user_public_id = current_user["public_id"]
    except Exception as e:
        return jsonify({"Status": "Failed", "message": "Error DecodeId" + str(e)}), 500
    with connection.cursor() as cursor:
        # Read a single record
        sql = (" SELECT * from project LEFT JOIN status on status.status_id = project.status_id "
               " LEFT JOIN projectdetails on projectdetails.project_public_id = project.project_public_id"
               " WHERE project.project_public_id = %s ")
        cursor.execute(sql, (publicProject,))
        result = cursor.fetchall()
        cursor.close()
        return jsonify({"Status": "success", "projectList": result}), 200


@ProjectService.route("/Customer/Project/<public_project>/group", methods=["GET"])
@token_required
def Customers_project_id_group(current_user, public_project):
    try:
        user_public_id = current_user["public_id"]
    except Exception as e:
        return jsonify({"Status": "Failed", "message": "Error DecodeId" + str(e)}), 500
    with connection.cursor() as cursor:
        # Read a single record
        sql = (
            " SELECT job.job_name , job.job_public_id , status.status_name , job.status_id,priority.priority_name,teamproject.teamproject_public_id,teamproject.teamproject_name ,job.job_created , jobdetails.jobdetails_enddate ,job.job_operator_id from job LEFT JOIN project_has_job ON job.job_public_id = project_has_job.job_public_id "
            " LEFT JOIN priority on priority.priority_id = job.priority_id"
            " LEFT JOIN jobdetails on jobdetails.job_public_id = job.job_public_id "
            " LEFT JOIN status on status.status_id = job.status_id "
            " LEFT JOIN teamproject on teamproject.teamproject_public_id = project_has_job.teamproject_public_id"
            " LEFT JOIN teamproject_has_user on teamproject_has_user.teamproject_public_id = teamproject.teamproject_public_id"
            " WHERE project_has_job.project_public_id = %s GROUP BY job.job_public_id ORDER BY status.status_id"
        )
        cursor.execute(sql, (public_project))
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
    cursor.execute(sql, (publicProject,))
    result = cursor.fetchall()
    cursor.close()
    return jsonify({"Status": "success", "projectList": result}), 200


# Access private
# Require / "access token"
# Db Project
# Desc Desc job
@ProjectService.route("/Customer/Job/<public_job>", methods=["GET"])
@token_required
def descjobdetails(current_user, public_job):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 500
    try:
        with connection.cursor() as cursor:
            sql = ("SELECT * from job LEFT JOIN status on status.status_id = job.status_id "
                   " LEFT JOIN jobdetails on jobdetails.job_public_id = job.job_public_id WHERE job.job_public_id = %s")
            cursor.execute(sql, (public_job))
            rv = cursor.fetchall()
            sql_assets = (
                " SELECT assets_public_id , assets_sn , users_creator_id ,assets_brand_name , assets_categories_name , assets_series_name , assets_insurance_name  "
                " FROM assets LEFT JOIN jobhasassets on jobhasassets.assets_id = assets.assets_id "
                " LEFT JOIN job on job.job_id = jobhasassets.job_id "
                " LEFT JOIN assetsbrand on assetsbrand.assets_brand_id = assets.assets_brand_id"
                " LEFT JOIN assetscategories on assetscategories.assets_categories_id = assets.assets_categories_id"
                "  LEFT JOIN assetsinsurance on assetsinsurance.assets_insurance_id = assets.assets_insurance_id"
                " LEFT JOIN assetsseries on assetsseries.assets_series_id = assets.assets_series_id"
                " WHERE job.job_public_id = %s "
            )
            cursor.execute(sql_assets, (public_job))
            rv_assets = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify({"Status": "success", "job": rv, "assets": rv_assets}), 200
    except Exception as e:
        return jsonify({"Status": "Error", "projectList": e}), 500
