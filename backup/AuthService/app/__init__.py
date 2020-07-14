from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow
from flask_cors import CORS
from app.Auth.views import AuthService
app = Flask(__name__)
CORS(app)

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://admin:Passw0rd_2020@localhost/2fast'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False


db = SQLAlchemy(
    engine_options={'connect_args': {'connect_timeout': 5}}
)
db.init_app(app)
ma = Marshmallow(app)


app.register_blueprint(AuthService)
