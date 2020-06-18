
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

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
class Status(db.Model):
    __tablename__ = 'status'
    status_id = db.Column(db.Integer, primary_key=True)
    status_name = db.Column(db.String(80))

class Project(db.Model):
    __tablename__ = 'project'
    project_id = db.Column(db.Integer, primary_key=True) 
    project_name = db.Column(db.String(80))
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))
    status = db.relationship('Status', backref='projects')
    project_created = db.Column(db.DateTime, nullable=False, default=datetime.now)
class Job(db.Model):
    __tablename__ = 'Job'
    job_id = db.Column(db.Integer, primary_key=True) 
    job_name = db.Column(db.String(80))
    project_id = db.Column(db.Integer, db.ForeignKey('project.project_id', ondelete='CASCADE'))
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))
    job_created =db.Column(db.DateTime, nullable=False,default=datetime.now)
class Task(db.Model):
    __tablename__ = 'Task'
    task_id = db.Column(db.Integer, primary_key=True)
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))
    project_id =  db.Column(db.Integer, db.ForeignKey('project.project_id', ondelete='CASCADE'))
    job_id =  db.Column(db.Integer, db.ForeignKey('Job.job_id', ondelete='CASCADE'))
    module_id = db.Column(db.Integer, db.ForeignKey('Module.module_id', ondelete='CASCADE'))
class Module(db.Model):
    __tablename__ = 'Module'
    module_id = db.Column(db.Integer, primary_key=True)
    module_name = db.Column(db.String(80))
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))
class Scope(db.Model):
    __tablename__ = 'Scope'
    scope_id = db.Column(db.Integer, primary_key=True)
    scope_name = db.Column(db.String(80))
    module_id =  db.Column(db.Integer, db.ForeignKey('Module.module_id', ondelete='CASCADE'))
class UserHasProject(db.Model):
    userhasproject_id = db.Column(db.Integer, primary_key=True)
    user_id = db.Column(db.Integer, db.ForeignKey('user.id', ondelete='CASCADE'))
    project_id = db.Column(db.Integer, db.ForeignKey('project.project_id', ondelete='CASCADE'))
class TeamProject(db.Model):
    __tablename__ = 'team_project'
    teamproject_id = db.Column(db.Integer, primary_key=True)
    teamproject_name = db.Column(db.String(80))
    company_id = db.Column(db.Integer, db.ForeignKey('company.company_id'))
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))
    teamproject_leader =  db.Column(db.Integer, db.ForeignKey('user.id', ondelete='CASCADE'))
    created = db.Column(db.DateTime, nullable=False, default=datetime.now)
class TeamProject_has_user(db.Model):
    __tablename__ = 'teamproject_has_user'
    teamprojecthasuser_id = db.Column(db.Integer, primary_key=True)
    teamproject_company_id = db.Column(db.Integer, db.ForeignKey('company.company_id'))
    user_id = db.Column(db.Integer, db.ForeignKey('user.id', ondelete='CASCADE'))
class TeamProject_has_project(db.Model):
    __tablename__ = 'teamproject_has_project'
    teamprojecthasproject_id = db.Column(db.Integer, primary_key=True)
    teamproject_id = db.Column(db.Integer, db.ForeignKey('team_project.teamproject_id'))
    project_id = db.Column(db.Integer, db.ForeignKey('project.project_id', ondelete='CASCADE'))
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))


db.create_all()

# StatusActive = Status(status_name='Active')
# StatusInActive = Status(status_name='InActive')
# LicenseDefault = License(license_name='BaseLicense')
# CompanyDefault = Company(company_name='NokSoft', license_id='1')
# ModuleDefault = Module(module_name='FORM')
# ScopeDefault = Scope(scope_name='scopeTest' , module_id = '1')
# db.session.add(StatusActive)
# db.session.add(StatusInActive)
# db.session.add(LicenseDefault)
# db.session.add(CompanyDefault)
# db.session.add(ModuleDefault)
# db.session.add(ScopeDefault)
db.session.commit()