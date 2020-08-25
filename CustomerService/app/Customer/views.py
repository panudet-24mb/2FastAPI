from flask import Flask, request, jsonify, make_response, Blueprint, flash, redirect, url_for, send_from_directory
import uuid
from werkzeug.security import generate_password_hash, check_password_hash
from werkzeug.datastructures import CombinedMultiDict
from werkzeug.utils import secure_filename
import jwt
import json
from functools import wraps
from app.env.config import Secret_key, EndPoint
import urllib
import os
import requests
import pymysql
import collections
import datetime
import uuid
from app.Customer.helper.helperFunc import token_required
from flask_paginate import Pagination, get_page_parameter

CustomerService = Blueprint(
    "CustomerService", __name__, url_prefix=EndPoint + "/v1")


@CustomerService.route("/Customer/stats", methods=["GET"])
@token_required
def Customers_stats(current_user):
    print(current_user)
    if not current_user["public_id"]:
        return jsonify({"status": "Error", "message": "Missing PublicId"}), 404
    try:
        with connection.cursor() as cursor:
            sql_count_project = (
                " SELECT count(*) as TotalProject FROM `customershasproject` WHERE `customers_public_id` = %s ")
            cursor.execute(sql_count_project,
                           (current_user["customers_public_id"],))
            rv_1 = cursor.fetchone()
            sql_groupProject = (
                " SELECT COUNT(project_has_job.job_public_id ) as job_count ,project.project_name,customershasproject.project_public_id , status.status_name   FROM customershasproject "
                " LEFT JOIN project on customershasproject.project_public_id = project.project_public_id "
                " LEFT JOIN project_has_job on project_has_job.project_public_id = 	customershasproject.project_public_id "
                " LEFT JOIN status on project.status_id = status.status_id"
                " WHERE customershasproject.customers_public_id = %s GROUP BY project_has_job.project_public_id "
            )
            cursor.execute(sql_groupProject,
                           (current_user["customers_public_id"],))
            rv_2 = cursor.fetchall()
            sql_count_jobAll = (
                " SELECT COUNT(job.job_public_id) as job_status_count ,status.status_name FROM  customershasproject "
                " LEFT JOIN project on project.project_public_id = customershasproject.project_public_id"
                " LEFT JOIN project_has_job on project_has_job.project_public_id = 	customershasproject.project_public_id "
                " LEFT JOIN job on job.job_public_id = project_has_job.job_public_id"
                " LEFT JOIN status on status.status_id = job.status_id"
                " WHERE customershasproject.customers_public_id = %s GROUP BY status.status_name"
            )
            cursor.execute(sql_count_jobAll,
                           (current_user["customers_public_id"],))
            rv_3 = cursor.fetchall()
            sql_count_assets_not_register = (
                "	 SELECT COUNT(customershasassets.job_has_assets_id)  as countassets   ,status.status_name from customershasassets "
                "	 LEFT JOIN customers on customers.customers_public_id = customershasassets.customers_public_id"
                "   LEFT JOIN status on status.status_id = customershasassets.status_id "
                "   WHERE customershasassets.customers_public_id =  %s GROUP BY status.status_name"
            )
            cursor.execute(sql_count_assets_not_register,
                           (current_user["customers_public_id"],))
            rv_4 = cursor.fetchall()
            connection.commit()
            cursor.close()
            if not rv_1:
                return jsonify({"status": "error", "message": "Failed "}), 404

            return jsonify({"Status": "Success", "totalStatusProject": rv_2, "totalStatusJob": rv_3, "totalproject": rv_1, "totalAssets": rv_4}), 200
    except Exception as e:
        return jsonify({"Status": "error", "message": e}), 500


@CustomerService.route("/Customer/Project", methods=["GET"])
@token_required
def Customers_project(current_user):
    if not current_user["public_id"]:
        return jsonify({"status": "Error", "message": "Missing PublicId"}), 404
    try:
        with connection.cursor() as cursor:
            sql = ("SELECT project.project_public_id , project.project_name , status.status_name from customershasproject "
                   " LEFT JOIN customers on customershasproject.customers_public_id = customers.customers_public_id "
                   " LEFT JOIN project on project.project_public_id = customershasproject.project_public_id "
                   " LEFT JOIN status on status.status_id = project.status_id "
                   " WHERE customers.customers_public_id  = %s "
                   )
            cursor.execute(sql, (current_user["customers_public_id"],))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            if not rv:
                return jsonify({"status": "error", "message": "Failed "}), 404
            return jsonify({"Status": "Success", "project": rv}), 200
    except Exception as e:
        return jsonify({"Status": "error", "message": e}), 500


@CustomerService.route("/Customer/Project/<ProjectID>", methods=["GET"])
@token_required
def Customers_ListProject_job(current_user, ProjectID):
    if not current_user["public_id"]:
        return jsonify({"status": "Error", "message": "Missing PublicId"}), 404
    try:
        # jobdetails.job_public_id ,jobdetails.jobdetails_enddate , jobdetails.jobdetails_location ,jobdetails.jobdetails_note,teamproject.teamproject_public_id,teamproject.teamproject_name,users_creator_id
        with connection.cursor() as cursor:
            sql = (" SELECT job.job_public_id , job.job_name , jobdetails.jobdetails_location , jobdetails.jobdetails_startdate,  jobdetails.jobdetails_enddate , job.job_operator_id , status.status_name , teamproject.teamproject_public_id , teamproject.teamproject_name,  users_creator_id from project_has_job "
                   " LEFT JOIN job on job.job_public_id = project_has_job.job_public_id "
                   " LEFT JOIN teamproject on teamproject.teamproject_public_id = project_has_job.teamproject_public_id "
                   " LEFT JOIN status on job.status_id = status.status_id "
                   " LEFT JOIN jobdetails on jobdetails.job_public_id = job.job_public_id "
                   " WHERE project_has_job.project_public_id = %s "
                   )
            cursor.execute(sql, (ProjectID,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            if not rv:
                return jsonify({"status": "error", "message": "empty"}), 404
            return jsonify({"Status": "Success", "job": rv}), 200
    except Exception as e:
        return jsonify({"Status": "error", "message": e}), 500


@CustomerService.route("/Customer/test", methods=["GET"])
@token_required
def Customers_project_test(current_user):
    if not current_user["public_id"]:
        return jsonify({"status": "Error", "message": "Missing PublicId"}), 404
    try:
        with connection.cursor() as cursor:
            search = False
            per_page = 10
            q = request.args.get('q')
            if q:
                search = True
            if search == False:
                q = ''
            Search_q = "%" + q + "%"
            page = request.args.get(get_page_parameter(), type=int, default=1)
            offset = (page - 1) * per_page
            sql_count = (
                " SELECT count(*) as count FROM `job` WHERE `job_name` LIKE %s")
            cursor.execute(sql_count, (Search_q))
            total = cursor.fetchone()
            sql = ("SELECT * from job "
                   " WHERE job_name LIKE %s "
                   " LIMIT %s OFFSET %s"
                   )
            cursor.execute(sql, (Search_q, per_page, offset))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            if not rv:
                return jsonify({"Status": "error", "message": "empty "}), 404
            return jsonify({"Status": "Success", "details": {'count': total["count"], 'page': page, 'offset': offset, 'per_page': per_page}, "project": rv}), 200
    except Exception as e:
        return jsonify({"Status": "error", "message": e}), 500
