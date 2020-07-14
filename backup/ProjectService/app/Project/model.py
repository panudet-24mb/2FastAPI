
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow , Schema, fields
from datetime import datetime
from collections import OrderedDict
from marshmallow import fields
db = SQLAlchemy()
ma = Marshmallow()
class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(50))
    password = db.Column(db.String(80))
    public_id = db.Column(db.String(50), unique=True)
