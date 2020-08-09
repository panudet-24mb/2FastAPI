from flask import Flask, request, jsonify, make_response, Blueprint , flash, redirect, url_for , send_from_directory
import uuid
from werkzeug.security import generate_password_hash, check_password_hash
from werkzeug.datastructures import CombinedMultiDict
from werkzeug.utils import secure_filename
import jwt
import json
from functools import wraps
from app import Secret_key, EndPoint , connection
import urllib 
import os
import requests
import pymysql
import collections
import datetime
import uuid
from app.Customer.helper.helperFunc import token_required

CustomerService = Blueprint("CustomerService", __name__, url_prefix=EndPoint + "/v1")

@CustomerService.route("/Customer/Project", methods=["GET"])
@token_required
def Customers_project(current_user):
    if not current_user["public_id"]:
        return jsonify ({"status" : "Error" , "message":"Missing PublicId"}) , 404
    try : 
        with connection.cursor() as cursor:
            sql =("SELECT project.project_public_id , project.project_name , status.status_name from customershasproject "
                   " LEFT JOIN customers on customershasproject.customers_public_id = customers.customers_public_id "
                   " LEFT JOIN project on project.project_public_id = customershasproject.project_public_id "
                   " LEFT JOIN status on status.status_id = project.status_id "
                   " WHERE customers.customers_public_id  = %s " 
                   )
            cursor.execute(sql,(current_user["customers_public_id"],) )
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            if not rv:
                return jsonify ({"status" : "error" , "message":"Failed "}) , 404
            return jsonify ({"Status" : "Success" , "project":rv }) , 200
    except  Exception as e :
        return jsonify ({"Status" : "error" , "message":e }) , 500
    

@CustomerService.route("/Customer/Project/<ProjectID>", methods=["GET"])
@token_required
def Customers_ListProject_job(current_user , ProjectID):
    if not current_user["public_id"]:
        return jsonify ({"status" : "Error" , "message":"Missing PublicId"}) , 404
    try : 
        # jobdetails.job_public_id ,jobdetails.jobdetails_enddate , jobdetails.jobdetails_location ,jobdetails.jobdetails_note,teamproject.teamproject_public_id,teamproject.teamproject_name,users_creator_id   
        with connection.cursor() as cursor:
            sql =(" SELECT job.job_public_id , job.job_name , jobdetails.jobdetails_location , jobdetails.jobdetails_startdate,  jobdetails.jobdetails_enddate , job.job_operator_id , status.status_name , teamproject.teamproject_public_id , teamproject.teamproject_name,  users_creator_id from project_has_job "
                  " LEFT JOIN job on job.job_public_id = project_has_job.job_public_id "
                  " LEFT JOIN teamproject on teamproject.teamproject_public_id = project_has_job.teamproject_public_id "
                  " LEFT JOIN status on job.status_id = status.status_id "
                  " LEFT JOIN jobdetails on jobdetails.job_public_id = job.job_public_id "
                  " WHERE project_has_job.project_public_id = %s "
                )
            cursor.execute(sql ,(ProjectID,) )
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            if not rv:
                return jsonify ({"status" : "error" , "message":"empty"}) , 404
            return jsonify ({"Status" : "Success" , "job":rv }) , 200
    except  Exception as e :
        return jsonify ({"Status" : "error" , "message":e }) , 500
    

        

