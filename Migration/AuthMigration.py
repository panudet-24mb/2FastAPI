
from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] =  'mysql://admin:Passw0rd_2020@localhost/2fast'
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
    project_public_id = db.Column(db.String(50), unique=True)
    project_name = db.Column(db.String(80))
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))
    status = db.relationship('Status', backref='projects')
    project_created = db.Column(db.DateTime, nullable=False, default=datetime.now)
class Job(db.Model):
    __tablename__ = 'Job'
    job_id = db.Column(db.Integer, primary_key=True) 
    job_public_id = db.Column(db.String(50), unique=True)
    job_name = db.Column(db.String(80))
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))
    job_created =db.Column(db.DateTime, nullable=False,default=datetime.now)
class Task(db.Model):
    __tablename__ = 'Task'
    task_id = db.Column(db.Integer, primary_key=True)
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))
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
    public_id = db.Column(db.String(50), db.ForeignKey('user.public_id', ondelete='CASCADE'))
    project_id = db.Column(db.Integer, db.ForeignKey('project.project_id', ondelete='CASCADE'))
class TeamProject(db.Model):
    __tablename__ = 'teamproject'
    teamproject_id = db.Column(db.Integer, primary_key=True)
    teamproject_public_id = db.Column(db.String(50), unique=True)
    teamproject_name = db.Column(db.String(80))
    company_id = db.Column(db.Integer, db.ForeignKey('company.company_id'))
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))
    teamproject_leader =  db.Column(db.Integer, db.ForeignKey('user.id', ondelete='CASCADE'))
    created = db.Column(db.DateTime, nullable=False, default=datetime.now)
class TeamProject_has_user(db.Model):
    __tablename__ = 'teamproject_has_user'
    teamprojecthasuser_id = db.Column(db.Integer, primary_key=True)
    teamproject_id = db.Column(db.Integer, db.ForeignKey('teamproject.teamproject_id'))
    public_id = db.Column(db.String(50), db.ForeignKey('user.public_id', ondelete='CASCADE'))
    
class TeamProject_has_project(db.Model):
    __tablename__ = 'teamproject_has_project'
    teamprojecthasproject_id = db.Column(db.Integer, primary_key=True)
    teamprojecthasproject_public_id = db.Column(db.String(50), unique=True) 
    teamproject_id = db.Column(db.Integer, db.ForeignKey('teamproject.teamproject_id'))
    project_id = db.Column(db.Integer, db.ForeignKey('project.project_id', ondelete='CASCADE'))
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))
class TeamProject_has_job(db.Model):
    __tablename__ = 'teamproject_has_job'
    teamproejecthasjob_id = db.Column(db.Integer, primary_key=True)
    teamprojecthasproject_public_id = db.Column(db.String(50), db.ForeignKey('teamproject_has_project.teamprojecthasproject_public_id')) 
    job_id = db.Column(db.Integer, db.ForeignKey('Job.job_id', ondelete='CASCADE'))
    status_id = db.Column(db.Integer, db.ForeignKey('status.status_id', ondelete='CASCADE'))

db.create_all()

StatusActive = Status(status_name='Active')
StatusInActive = Status(status_name='InActive')
db.session.add(StatusActive)
db.session.add(StatusInActive)
db.session.commit()
LicenseDefault = License(license_name='BaseLicense')
db.session.add(LicenseDefault)
db.session.commit()
roleDefault = Role(role_name='User')
db.session.add(roleDefault)
db.session.commit()
CompanyDefault = Company(company_name='NokSoft', license_id='1')
db.session.add(CompanyDefault)
db.session.commit()
adminDefault = User(username='admin', password='sha256$ARFMKvEz$ba9c93a22765eb3504fd688c00c9d9de9eb3437d2a70c08abac90e938fdeb4a8' , public_id = '85857905-9662-4c68-8843-1e64d9828a81' , company_id = '1' , role_id = '1')
db.session.add(adminDefault)
db.session.commit()
# ModuleDefault = Module(module_name='FORM')
# ScopeDefault = Scope(scope_name='scopeTest' , module_id = '1')

# db.session.add(ModuleDefault)
# db.session.add(ScopeDefault)
