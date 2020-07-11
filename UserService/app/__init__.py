from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from flask_cors import CORS
import pymysql
from DBUtils.PooledDB import PooledDB

app = Flask(__name__)
CORS(app)


mySQLConnectionPool = PooledDB(creator = pymysql,
 
                               host= 'localhost',
 
                            #    user= 'admin',
 
                            #    password='Passw0rd_2020',
                               user= 'root',
 
                               password='',
 
                               database='2fast',
 
                               autocommit=True,
 
                               charset='utf8mb4',
 
                               cursorclass=pymysql.cursors.DictCursor,
 
                               blocking=False,
 
                               maxconnections=60)
                               
connection = mySQLConnectionPool.connection()

app.config['SQLALCHEMY_DATABASE_URI'] =  'mysql://root@localhost/2fast'
# app.config['SQLALCHEMY_DATABASE_URI'] =  'mysql://admin:Passw0rd_2020@localhost/2fast'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
Secret_key = 'thisissecret'
EndPoint = '/api'
db = SQLAlchemy(app)
ma = Marshmallow(app)


from app.Client.views import ClientService
app.register_blueprint(ClientService)