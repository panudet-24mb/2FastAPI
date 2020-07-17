from flask import Flask
from flask_cors import CORS
import pymysql
from DBUtils.PooledDB import PooledDB

app = Flask(__name__)
CORS(app)

Secret_key = "thisissecret"
mySQLConnectionPool = PooledDB(creator = pymysql,
 
                               host= 'localhost',
 
                               user= 'admin',
 
                               password='Passw0rd_2020',
                            #    user= 'root',
 
                            #    password='',
 
                               database='2fast',
 
                               autocommit=True,
 
                               charset='utf8mb4',
 
                               cursorclass=pymysql.cursors.DictCursor,
 
                               blocking=False,
 
                               maxconnections=60)
                               
connection = mySQLConnectionPool.connection()


from app.Auth.views import AuthService

app.register_blueprint(AuthService)
