from django.contrib import admin
from api.models import *
# Register your models here.
admin.site.register(Company)
admin.site.register(Job)
admin.site.register(License)
admin.site.register(Project)
admin.site.register(ProjectHasJob)
admin.site.register(Role)
admin.site.register(Status)
admin.site.register(Teamproject)
admin.site.register(TeamprojectHasProject)
admin.site.register(TeamprojectHasUser)
admin.site.register(User)
admin.site.register(Userclient)
admin.site.register(Usersdetails)
admin.site.register(Priority)
admin.site.register(ProjectDetails)