
from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] =  'mysql://root:@localhost/2fast'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
Secret_key = 'thisissecret'
db = SQLAlchemy(app)


class User(db.Model):
    __tablename__ = "user"
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(50))
    password = db.Column(db.String(80))
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
class Project(db.Model):
    __tablename__ = 'project'
    id = db.Column(db.Integer, primary_key=True) 
    name = db.Column(db.String(80))
class Job(db.Model):
    __tablename__ = 'Job'
    id = db.Column(db.Integer, primary_key=True) 
    name = db.Column(db.String(80))
class Jobattribute(db.Model):
    __tablename__ = 'Jobattribute'
    id = db.Column(db.Integer, primary_key=True) 
    name = db.Column(db.String(80))
    




RoleDefault = Role(name = 'User')
db.session.add(RoleDefault)
LicenseDefault = License(name = 'LicenseNeverExpire')
db.session.add(LicenseDefault)
CompanyDefault = Company(name = 'NokSoft' , license_id =  1)
db.session.add(CompanyDefault)
db.session.commit()
       
db.create_all()