
from flask_sqlalchemy import SQLAlchemy
db = SQLAlchemy()

class User(db.Model):
    __tablename__ = "user"
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(50))
    public_id = db.Column(db.String(50), unique=True)
    company_id = db.Column(db.Integer, db.ForeignKey('company.id'))
    role_id =  db.Column(db.Integer, db.ForeignKey('role.id'))
class Company(db.Model):
    __tablename__ = 'company'
    id = db.Column(db.Integer, primary_key=True) 
    name = db.Column(db.String(80))
    license_id = db.Column(db.Integer, db.ForeignKey('license.id', ondelete='CASCADE'))
class License(db.Model):
    __tablename__ = 'license'
    id = db.Column(db.Integer, primary_key=True) 
    name = db.Column(db.String(80))
class Role(db.Model):
    __tablename__ = 'role'
    id = db.Column(db.Integer, primary_key=True) 
    name = db.Column(db.String(80))
    