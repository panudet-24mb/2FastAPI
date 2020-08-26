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
from app.Assets.helper.helperFunc import token_required
import collections

AssetsService = Blueprint("AssetsService", __name__, url_prefix=EndPoint + "/v1")

# Access private
# Require / "access token" jobpublicId
# Db Project
# Desc All Assets in JOB
@AssetsService.route("/assets/<job_public>", methods=["GET"])
@token_required
def ListAssetsJob(current_user,job_public):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 200
    try:
        with connection.cursor() as cursor:
            sql = (
                " SELECT assets_public_id , assets_sn , users_creator_id ,assets_brand_name , assets_categories_name , assets_series_name , assets_insurance_name  "
                " FROM assets LEFT JOIN jobhasassets on jobhasassets.assets_id = assets.assets_id "
               " LEFT JOIN job on job.job_id = jobhasassets.job_id "
               " LEFT JOIN assetsbrand on assetsbrand.assets_brand_id = assets.assets_brand_id"
               " LEFT JOIN assetscategories on assetscategories.assets_categories_id = assets.assets_categories_id"
              "  LEFT JOIN assetsinsurance on assetsinsurance.assets_insurance_id = assets.assets_insurance_id"
              " LEFT JOIN assetsseries on assetsseries.assets_series_id = assets.assets_series_id"
                " LEFT JOIN assetsbrand on assetsbrand.assets_brand_id = assets.assets_brand_id"
               " LEFT JOIN assetscategories on assetscategories.assets_categories_id = assets.assets_categories_id"
              "  LEFT JOIN assetsinsurance on assetsinsurance.assets_insurance_id = assets.assets_insurance_id"
              " LEFT JOIN assetsseries on assetsseries.assets_series_id = assets.assets_series_id"
                 " WHERE job.job_public_id = %s "
            )
            cursor.execute(sql, (job_public))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify({"Status": "success", "assets": rv}), 200
    except Exception as e:
        return jsonify({"Status": "Error", "projectList": e}), 500

# Access private
# Require / "access token" assets_public_id
# Db Project
# UpdateAssets is valid
@AssetsService.route("/assets/<assets_public>/<isvalid>", methods=["PUT"])
@token_required
def UpdateAssetsisValid(current_user,assets_public,isvalid):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 200
    try:
        with connection.cursor() as cursor:
            sql = (
               " update jobhasassets  LEFT JOIN assets on assets.assets_id = jobhasassets.assets_id  "
                " SET jobhasassets.assets_is_valid = %s WHERE assets.assets_public_id = %s "
            )
            cursor.execute(sql, (isvalid,assets_public))
            connection.commit()
            cursor.close()
            return jsonify({"Status": "success", "updateAssets": "success"}), 200
    except Exception as e:
        return jsonify({"Status": "Error", "projectList": e}), 500