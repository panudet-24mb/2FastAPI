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

RepairService = Blueprint("RepairService", __name__, url_prefix=EndPoint + "/v1")

# Access private
# Require / "access token" Assets
# Db Assets
# Desc All Assets
@RepairService.route("/repair/<assets_sn>", methods=["GET"])
@token_required
def ListAssetsJob(current_user,assets_sn):
    try:
        public_id = current_user["public_id"]
    except:
        return jsonify({"Status": "Failed", "message": "Error DecodeId"}), 200
    try:
        with connection.cursor() as cursor:
            sql = (
                " SELECT assets.assets_public_id , assets.assets_sn ,assetsbrand.assets_brand_name,assetscategories.assets_categories_name,assetsinsurance.assets_insurance_name,assetsseries.assets_series_name, jobhasassets.job_id ,jobhasassets.project_public_id,status.status_name "
                " , job.job_name , job.status_id , job_operator_id "
                " from assets LEFT JOIN customershasassets on assets.assets_id = customershasassets.assets_id "
                " LEFT JOIN status on customershasassets.status_id = status.status_id "
                " LEFT JOIN jobhasassets on jobhasassets.assets_id = assets.assets_id "
                " LEFT JOIN job on jobhasassets.job_id = job.job_id "
                " LEFT JOIN assetsbrand on assetsbrand.assets_brand_id = assets.assets_brand_id"
                  " LEFT JOIN assetscategories on assetscategories.assets_categories_id = assets.assets_categories_id"
              "  LEFT JOIN assetsinsurance on assetsinsurance.assets_insurance_id = assets.assets_insurance_id"
              " LEFT JOIN assetsseries on assetsseries.assets_series_id = assets.assets_series_id"
                
                " WHERE assets.assets_sn = %s "
            )
            cursor.execute(sql, (assets_sn,))
            rv = cursor.fetchall()
            connection.commit()
            cursor.close()
            return jsonify({"Status": "success", "assets": rv}), 200
    except Exception as e:
        return jsonify({"Status": "Error", "assets": e}), 500
