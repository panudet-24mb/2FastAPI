
from flask import Flask
from flask_cors import CORS
from app.Project.views import ProjectService
from app.Customer.views import CustomerService

app = Flask(__name__, static_folder='static')
CORS(app, resources={r"/api/*": {"origins": "*"}})


# Secret_key = 'thisissecret'
# EndPoint = '/api'
app.register_blueprint(CustomerService)
app.register_blueprint(ProjectService)
