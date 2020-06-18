from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from flask_cors import CORS
import pymysql
from DBUtils.PooledDB import PooledDB

app = Flask(__name__)
CORS(app)
# connection = pymysql.connect(host='localhost',
#                              user='root',
#                              password='',
#                              db='2fast',
#                              charset='utf8mb4',
#                              cursorclass=pymysql.cursors.DictCursor)

mySQLConnectionPool = PooledDB(creator = pymysql,
 
                               host= 'localhost',
 
                               user= 'root',
 
                               password='',
 
                               database='2fast',
 
                               autocommit=True,
 
                               charset='utf8mb4',
 
                               cursorclass=pymysql.cursors.DictCursor,
 
                               blocking=False,
 
                               maxconnections=60)
                               
connection = mySQLConnectionPool.connection()


app.config['SQLALCHEMY_DATABASE_URI'] =  'mysql://root:@localhost/2fast'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
Secret_key = 'thisissecret'
EndPoint = '/api'
db = SQLAlchemy(app)
ma = Marshmallow(app)
from app.Project.project import ProjectService
app.register_blueprint(ProjectService)