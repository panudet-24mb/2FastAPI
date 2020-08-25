from app.Project.views import ProjectService
from app.Customer.views import CustomerService
from flask import Flask
from flask_cors import CORS
import pymysql
from DBUtils.PooledDB import PooledDB


app = Flask(__name__, static_folder='static')
CORS(app, resources={r"/api/*": {"origins": "*"}})

mySQLConnectionPool = PooledDB(creator=pymysql,

                               host='localhost',

                               user='admin',

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
Secret_key = 'thisissecret'
EndPoint = '/api'
app.register_blueprint(CustomerService)
app.register_blueprint(ProjectService)
