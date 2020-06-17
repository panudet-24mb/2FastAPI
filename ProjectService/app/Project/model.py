
from flask_sqlalchemy import SQLAlchemy
from flask_marshmallow import Marshmallow , Schema, fields
from datetime import datetime
from collections import OrderedDict
db = SQLAlchemy()
ma = Marshmallow()
class User(db.Model):
    __tablename__ = "User"
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(50))
    password = db.Column(db.String(80))
    public_id = db.Column(db.String(50), unique=True)
class Project(db.Model):
    __tablename__ = 'project'
    id = db.Column(db.Integer, primary_key=True) 
    name = db.Column(db.String(80))
    status_id = db.Column(db.Integer, db.ForeignKey('status.id', ondelete='CASCADE'))
    created = db.Column(db.DateTime, nullable=False, default=datetime.now)
class ProjectSchema(ma.Schema):
    class Meta:
        model = Project 

class Status(db.Model):
    __tablename__ = 'status'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80))
class StatusSchema(ma.Schema):
    class Meta:
        model = Status 


class Job(db.Model):
    __tablename__ = 'Job'
    id = db.Column(db.Integer, primary_key=True) 
    name = db.Column(db.String(80))
    project_id = db.Column(db.Integer, db.ForeignKey('project.id', ondelete='CASCADE'))
    status_id = db.Column(db.Integer, db.ForeignKey('status.id', ondelete='CASCADE'))
    created =db.Column(db.DateTime, nullable=False,default=datetime.now)
class Task(db.Model):
    __tablename__ = 'Task'
    id = db.Column(db.Integer, primary_key=True)
    status_id = db.Column(db.Integer, db.ForeignKey('status.id', ondelete='CASCADE'))
    project_id =  db.Column(db.Integer, db.ForeignKey('project.id', ondelete='CASCADE'))
    job_id =  db.Column(db.Integer, db.ForeignKey('Job.id', ondelete='CASCADE'))
    module_id = db.Column(db.Integer, db.ForeignKey('Module.id', ondelete='CASCADE'))
class Module(db.Model):
    __tablename__ = 'Module'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80))
    status_id = db.Column(db.Integer, db.ForeignKey('status.id', ondelete='CASCADE'))
class Scope(db.Model):
    __tablename__ = 'Scope'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(80))
    module_id =  db.Column(db.Integer, db.ForeignKey('Module.id', ondelete='CASCADE'))
