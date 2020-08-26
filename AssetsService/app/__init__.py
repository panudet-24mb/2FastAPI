from flask import Flask
from flask_cors import CORS
import pymysql
from DBUtils.PooledDB import PooledDB

app = Flask(__name__)
CORS(app)


mySQLConnectionPool = PooledDB(
    creator=pymysql,
    host="localhost",
    user="admin",
    password="Passw0rd_2020",
    # user="root",
    # password="",
    database="2fast",
    autocommit=True,
    charset="utf8mb4",
    cursorclass=pymysql.cursors.DictCursor,
    blocking=False,
    maxconnections=60,
)
connection = mySQLConnectionPool.connection()
Secret_key = "thisissecret"
EndPoint = "/api"
from app.Assets.view import AssetsService
from app.Repair.view import RepairService
app.register_blueprint(AssetsService)
app.register_blueprint(RepairService)
