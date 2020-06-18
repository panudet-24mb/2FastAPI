from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from flask_cors import CORS
import pymysql
app = Flask(__name__)
CORS(app)
connection = pymysql.connect(host='localhost',
                             user='admin',
                             password='Passw0rd_2020',
                             db='2fast',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)
app.config['SQLALCHEMY_DATABASE_URI'] =  'mysql://admin:Passw0rd_2020@localhost/2fast'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
Secret_key = 'thisissecret'
EndPoint = '/api'
db = SQLAlchemy(app)
ma = Marshmallow(app)
from app.Project.project import ProjectService
app.register_blueprint(ProjectService)