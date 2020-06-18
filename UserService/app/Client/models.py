
from flask_sqlalchemy import SQLAlchemy
db = SQLAlchemy()

class User(db.Model):
    __tablename__ = "user"
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(50))
    password = db.Column(db.String(80))
    public_id = db.Column(db.String(50), unique=True)
    company_id = db.Column(db.Integer, db.ForeignKey('company.company_id'))
    role_id =  db.Column(db.Integer, db.ForeignKey('role.role_id'))
class Company(db.Model):
    __tablename__ = 'company'
    company_id = db.Column(db.Integer, primary_key=True) 
    company_name = db.Column(db.String(80))
    license_id = db.Column(db.Integer, db.ForeignKey('license.license_id', ondelete='CASCADE'))
class License(db.Model):
    __tablename__ = 'license'
    license_id = db.Column(db.Integer, primary_key=True) 
    license_name = db.Column(db.String(80))
class Role(db.Model):
    __tablename__ = 'role'
    role_id = db.Column(db.Integer, primary_key=True) 
    role_name = db.Column(db.String(80))
