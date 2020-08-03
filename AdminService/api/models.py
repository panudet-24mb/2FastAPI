# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remov` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class Status(models.Model):
    status_id = models.AutoField(primary_key=True)
    status_name = models.CharField(max_length=80, blank=True, null=True)

    class Meta:
        db_table = "status"

    def __str__(self):
        return str(self.status_name)


class License(models.Model):
    license_id = models.AutoField(primary_key=True)
    license_name = models.CharField(max_length=80, blank=True, null=True)
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)

    class Meta:
        db_table = "license"

    def __str__(self):
        return self.license_name


class Company(models.Model):
    company_id = models.AutoField(primary_key=True)
    company_public_id = models.CharField(
        max_length=80, unique=True, blank=True, null=True
    )
    company_code = models.CharField(max_length=80, unique=True,blank=True, null=True)
    company_name = models.CharField(max_length=80, blank=True, null=True)
    license = models.ForeignKey(License, models.CASCADE, blank=True, null=True)
    class Meta:
        db_table = "company"

    def __str__(self):
        return self.company_name


class Role(models.Model):
    role_id = models.AutoField(primary_key=True)
    role_name = models.CharField(max_length=80, blank=True, null=True)
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)

    class Meta:
        db_table = "role"

    def __str__(self):
        return self.role_name


class User(models.Model):
    username = models.CharField(max_length=50, blank=True, null=True)
    password = models.CharField(max_length=80, blank=True, null=True)
    public_id = models.CharField(unique=True, max_length=50, blank=True, null=True)
    company = models.ForeignKey(
        Company, on_delete=models.CASCADE, blank=True, null=True
    )
    role = models.ForeignKey(Role, models.CASCADE, blank=True, null=True)

    class Meta:
        db_table = "user"

    def __str__(self):
        return str(self.public_id)


class Module(models.Model):
    module_id = models.AutoField(primary_key=True)
    module_name = models.CharField(max_length=80, blank=True, null=True)
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)

    class Meta:
        db_table = "module"

    def __str__(self):
        return self.Module


class Scope(models.Model):
    scope_id = models.AutoField(primary_key=True)
    scope_name = models.CharField(max_length=80, blank=True, null=True)
    module = models.ForeignKey(Module, models.CASCADE, blank=True, null=True)

    class Meta:
        db_table = "scope"

    def __str__(self):
        return self.scope_name


class assets_brand(models.Model):
    assets_brand_id = models.AutoField(primary_key=True)
    assets_brand_name = models.CharField(max_length=80, blank=True, null=True)

    class Meta:
        db_table = "assetsbrand"

    def __str__(self):
        return self.assets_brand_name


class assets_categories(models.Model):
    assets_categories_id = models.AutoField(primary_key=True)
    assets_categories_name = models.CharField(max_length=80, blank=True, null=True)

    class Meta:
        db_table = "assetscategories"

    def __str__(self):
        return self.assets_categories_name


class assets_storage_unit(models.Model):
    assets_storage_unit_id = models.AutoField(primary_key=True)
    assets_storage_unit_name = models.CharField(max_length=80, blank=True, null=True)

    class Meta:
        db_table = "assetsstorageunitname"

    def __str__(self):
        return self.assets_storage_unit_name


class assets_insurance(models.Model):
    assets_insurance_id = models.AutoField(primary_key=True)
    assets_insurance_name = models.CharField(max_length=80, blank=True, null=True)

    class Meta:
        db_table = "assetsinsurance"

    def __str__(self):
        return self.assets_insurance_name

class assets_series(models.Model):
    assets_series_id = models.AutoField(primary_key=True)
    assets_series_name = models.CharField(max_length=80, blank=True, null=True)
    class Meta:
        db_table = "assetsseries"
    def __str__(self):
        return self.assets_series_name
class assets(models.Model):
    assets_id = models.AutoField(primary_key=True)
    assets_public_id = models.CharField(
        max_length=80, unique=True, blank=True, null=True
    )
    assets_brand = models.ForeignKey(
        assets_brand, models.CASCADE, blank=True, null=True
    )
    assets_series = models.ForeignKey(
        assets_series, models.CASCADE, blank=True, null=True
    )
    assets_categories = models.ForeignKey(
        assets_categories, models.CASCADE, blank=True, null=True
    )
    assets_storage_unit = models.ForeignKey(
        assets_storage_unit, models.CASCADE, blank=True, null=True
    )
    assets_insurance = models.ForeignKey(
        assets_insurance, models.CASCADE, blank=True, null=True
    )
    assets_sn = models.CharField(max_length=80, blank=True, null=True)
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)
    users_creator = models.ForeignKey(
        User,
        to_field="public_id",
        on_delete=models.CASCADE,
        related_name="assets_creator",
        blank=True,
        null=True,
    )
    # class assets_format(model.Model):
    class Meta:
        db_table = "assets"

    def __str__(self):
        return self.assets_sn


class assets_save_format(models.Model):
    assets_save_format_id = models.AutoField(primary_key=True)
    assets_save_format_public_id = models.CharField(
        max_length=80, unique=True, blank=True, null=True
    )
    assets_save_format_name = models.CharField(max_length=80, blank=True, null=True)
    assets_brand = models.ForeignKey(
        assets_brand, models.CASCADE, blank=True, null=True
    )
    assets_categories = models.ForeignKey(
        assets_categories, models.CASCADE, blank=True, null=True
    )
    assets_storage_unit = models.ForeignKey(
        assets_storage_unit, models.CASCADE, blank=True, null=True
    )
    assets_insurance = models.ForeignKey(
        assets_insurance, models.CASCADE, blank=True, null=True
    )
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)
    users_creator = models.ForeignKey(
        User,
        to_field="public_id",
        on_delete=models.CASCADE,
        related_name="assets_save_format_creator",
        blank=True,
        null=True,
    )

    class Meta:
        db_table = "assetssaveformat"

    def __str__(self):
        return self.assets_save_format_name


class Platfrom(models.Model):
    platform_id = models.AutoField(primary_key=True)
    platform_name = models.CharField(max_length=80, blank=True, null=True)
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)

    class Meta:
        db_table = "platform"

    def __str__(self):
        return self.platform_name


class Priority(models.Model):
    priority_id = models.AutoField(primary_key=True)
    priority_name = models.CharField(max_length=80, blank=True, null=True)

    class Meta:
        db_table = "priority"

    def __str__(self):
        return self.priority_name


class Customers(models.Model):
    customers_id = models.AutoField(primary_key=True)
    customers_public_id = models.CharField(max_length=80, unique=True)
    customers_name = models.CharField(max_length=80, blank=True, null=True)
    customers_city = models.CharField(max_length=80, blank=True, null=True)
    customers_address = models.CharField(max_length=150, blank=True, null=True)
    customers_postcode = models.CharField(max_length=150, blank=True, null=True)
    customers_startdate = models.DateTimeField()
    customers_enddate = models.DateTimeField()
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)
    created = models.DateTimeField()
    customers_creator = models.ForeignKey(
        User,
        to_field="public_id",
        on_delete=models.CASCADE,
        related_name="customerscreator",
        blank=True,
        null=True,
    )

    class Meta:
        db_table = "custormers"

    def __str__(self):
        return str(self.customers_name)





class Project(models.Model):
    project_id = models.AutoField(primary_key=True)
    project_public_id = models.CharField(
        unique=True, max_length=50, blank=True, null=True
    )
    project_name = models.CharField(max_length=80, blank=True, null=True)
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)
    project_created = models.DateTimeField()
    project_creator = models.ForeignKey(
        User, to_field="public_id", on_delete=models.CASCADE, blank=True, null=True
    )

    class Meta:
        db_table = "project"

    def __str__(self):
        return str(self.project_public_id)


class ProjectDetails(models.Model):
    projectdetails_id = models.AutoField(primary_key=True)
    project_public = models.ForeignKey(
        Project,
        to_field="project_public_id",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
    )
    projectdetails_location = models.CharField(max_length=80, blank=True, null=True)
    projectdetails_desc = models.TextField(max_length=80, blank=True, null=True)
    projectdetails_manual = models.CharField(max_length=80, blank=True, null=True)
    projectdetails_note = models.TextField(default="")
    projectdetails_creator = models.ForeignKey(
        User, to_field="public_id", on_delete=models.CASCADE, blank=True, null=True
    )

    class Meta:
        db_table = "projectdetails"

    def __str__(self):
        return str(self.project_public)


class Project_Platform_Customers(models.Model):
    project_platform_id = models.AutoField(primary_key=True)
    customers_public = models.ForeignKey(
        Customers,
        to_field="customers_public_id",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
    )
    platfrom = models.ForeignKey(Platfrom, models.CASCADE, blank=True, null=True)
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)

    class Meta:
        db_table = "projectplatformcustomers"

    def __str__(self):
        return str(self.customers_public)


class Userclient(models.Model):
    userclient_id = models.AutoField(primary_key=True)
    userclient_public_id = models.CharField(
        unique=True, max_length=50, blank=True, null=True
    )
    userclient_userkey = models.CharField(
        unique=True, max_length=80, blank=True, null=True
    )
    userclient_exp = models.DateTimeField()
    customers_public = models.ForeignKey(
        Customers,
        to_field="customers_public_id",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
    )

    class Meta:
        db_table = "userclient"

    def __str__(self):
        return str(self.userclient_public_id)


class Job(models.Model):
    job_id = models.AutoField(primary_key=True)
    job_public_id = models.CharField(unique=True, max_length=50, blank=True, null=True)
    job_name = models.CharField(max_length=80, blank=True, null=True)
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)
    priority = models.ForeignKey(
        Priority,
        to_field="priority_id",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
    )
    job_operator = models.ForeignKey(
        User,
        to_field="public_id",
        on_delete=models.CASCADE,
        related_name="joboperator",
        blank=True,
        null=True,
    )
    job_created = models.DateTimeField()
    job_creator = models.ForeignKey(
        User,
        to_field="public_id",
        on_delete=models.CASCADE,
        related_name="jobcreator",
        blank=True,
        null=True,
    )

    class Meta:
        db_table = "job"

    def __str__(self):
        return str(self.job_public_id)


class JobDetails(models.Model):
    jobdetails_id = models.AutoField(primary_key=True)
    job_public = models.ForeignKey(
        Job, to_field="job_public_id", on_delete=models.CASCADE, blank=True, null=True
    )
    jobdetails_location = models.TextField( blank=True, null=True)
    jobdetails_desc = models.TextField(max_length=80, blank=True, null=True)
    jobdetails_manual = models.CharField(max_length=80, blank=True, null=True)
    jobdetails_note = models.TextField(default="")
    jobdetails_startdate = models.DateField(auto_now=False, auto_now_add=False)
    jobdetails_enddate = models.DateField(auto_now=False, auto_now_add=False)

    class Meta:
        db_table = "jobdetails"

    def __str__(self):
        return str(self.job_public_id)


class job_has_assets(models.Model):
    job_has_assets_id = models.AutoField(primary_key=True)
    job = models.ForeignKey(Job, models.CASCADE, blank=True, null=True)
    assets = models.ForeignKey(assets, models.CASCADE, blank=True, null=True)
    assets_is_valid = models.BooleanField(default=False)
    project_public = models.ForeignKey(
        Project,
        to_field="project_public_id",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
    )
    class Meta:
        db_table = "jobhasassets"

    def __str__(self):
        return str(self.job_has_assets_id)

class Customers_has_assets(models.Model):
    customer_has_assets_id = models.AutoField(primary_key=True)
    job_has_assets = models.ForeignKey(job_has_assets, models.CASCADE, blank=True, null=True)
    customers = models.ForeignKey(Customers, models.CASCADE, blank=True, null=True)
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)
    assets_system_status = models.BooleanField(default=False)
    created = models.DateTimeField()
    class Meta:
        db_table = "customershasassets"

    def __str__(self):
        return str(self.assets)


class Task(models.Model):
    task_id = models.AutoField(primary_key=True)
    task_public_id = models.CharField(unique=True, max_length=50, blank=True, null=True)
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)
    job = models.ForeignKey(Job, models.CASCADE, blank=True, null=True)
    module = models.ForeignKey(Module, models.CASCADE, blank=True, null=True)

    class Meta:
        db_table = "task"

    def __str__(self):
        return str(self.task_id)


class Teamproject(models.Model):
    teamproject_id = models.AutoField(primary_key=True)
    teamproject_public_id = models.CharField(
        unique=True, max_length=50, blank=True, null=True
    )
    teamproject_name = models.CharField(max_length=80, blank=True, null=True)
    company = models.ForeignKey(Company, models.CASCADE, blank=True, null=True)
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)
    created = models.DateTimeField()
    users_creator = models.ForeignKey(
        User,
        to_field="public_id",
        on_delete=models.CASCADE,
        related_name="Teamproject_creator",
        blank=True,
        null=True,
    )


    class Meta:
        db_table = "teamproject"

    def __str__(self):
        return str(self.teamproject_public_id)


class TeamprojectLevel(models.Model):
    teamproject_id = models.AutoField(primary_key=True)
    teamproject_public = models.ForeignKey(
        Teamproject,
        to_field="teamproject_public_id",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
    )
    teamproject_level = models.CharField(max_length=50, blank=True, null=True)
    user_public = models.ForeignKey(
        User, to_field="public_id", on_delete=models.CASCADE, blank=True, null=True
    )

    class Meta:
        db_table = "teamprojectlevel"

    def __str__(self):
        return str(self.teamproject_public)


class ProjectHasJob(models.Model):
    project_has_job_id = models.AutoField(primary_key=True)
    teamproject_public = models.ForeignKey(
        Teamproject,
        to_field="teamproject_public_id",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
    )
    project_public = models.ForeignKey(
        Project,
        to_field="project_public_id",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
    )
    job_public = models.ForeignKey(
        Job, to_field="job_public_id", on_delete=models.CASCADE, blank=True, null=True
    )

    class Meta:
        db_table = "project_has_job"

    def __str__(self):
        return str(self.project_public)


class TeamprojectHasProject(models.Model):
    teamprojecthasproject_id = models.AutoField(primary_key=True)
    teamproject_public = models.ForeignKey(
        Teamproject,
        to_field="teamproject_public_id",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
    )
    project_public = models.ForeignKey(
        Project,
        to_field="project_public_id",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
    )
    status = models.ForeignKey(Status, models.CASCADE, blank=True, null=True)

    class Meta:
        db_table = "teamproject_has_project"

    def __str__(self):
        return str(self.teamproject_public)


class TeamprojectHasUser(models.Model):
    teamprojecthasuser_id = models.AutoField(primary_key=True)
    teamproject_public = models.ForeignKey(
        Teamproject,
        to_field="teamproject_public_id",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
    )
    user_public = models.ForeignKey(
        User, to_field="public_id", on_delete=models.CASCADE, blank=True, null=True
    )

    class Meta:
        db_table = "teamproject_has_user"

    def __str__(self):
        return str(self.teamproject_public)


class Usersdetails(models.Model):
    usersdetails_id = models.AutoField(primary_key=True)
    user_public = models.ForeignKey(
        User, to_field="public_id", on_delete=models.CASCADE, blank=True, null=True
    )
    usersdetails_firstname = models.CharField(max_length=80, blank=True, null=True)
    usersdetails_lastname = models.CharField(max_length=80, blank=True, null=True)
    usersdetails_phone = models.CharField(max_length=80, blank=True, null=True)
    usersdetails_email = models.CharField(max_length=80, blank=True, null=True)
    usersdetails_position = models.CharField(max_length=80, blank=True, null=True)
    usersdetails_avatar = models.CharField(max_length=104, blank=True, null=True)

    def __str__(self):
        return self.usersdetails_firstname + " " + self.usersdetails_lastname

    class Meta:
        db_table = "usersdetails"

