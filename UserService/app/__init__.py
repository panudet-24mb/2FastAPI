from flask import Flask
from flask_cors import CORS
import pymysql
from DBUtils.PooledDB import PooledDB


app = Flask(__name__ , static_folder='static')
CORS(app)


mySQLConnectionPool = PooledDB(creator = pymysql,
 
                               host= 'localhost',
 
                               user= 'admin',
 
                               password='Passw0rd_2020',
                              #  user= 'root',
 
                              #  password='',
 
                               database='2fast',
 
                               autocommit=True,
 
                               charset='utf8mb4',
 
                               cursorclass=pymysql.cursors.DictCursor,
 
                               blocking=False,
 
                               maxconnections=60)
                               
connection = mySQLConnectionPool.connection()
UPLOAD_FOLDER =  'app/static/img/'
ALLOWED_EXTENSIONS = {'txt', 'pdf', 'png', 'jpg', 'jpeg', 'gif'}
Secret_key = 'thisissecret'
EndPoint = '/api'
from app.Client.views import ClientService
app.register_blueprint(ClientService)