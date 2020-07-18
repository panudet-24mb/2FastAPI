# Generated by Django 3.0.3 on 2020-07-18 15:24

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Company',
            fields=[
                ('company_id', models.AutoField(primary_key=True, serialize=False)),
                ('company_name', models.CharField(blank=True, max_length=80, null=True)),
                ('company_public_id', models.CharField(blank=True, max_length=80, null=True, unique=True)),
            ],
            options={
                'db_table': 'company',
            },
        ),
        migrations.CreateModel(
            name='Job',
            fields=[
                ('job_id', models.AutoField(primary_key=True, serialize=False)),
                ('job_public_id', models.CharField(blank=True, max_length=50, null=True, unique=True)),
                ('job_name', models.CharField(blank=True, max_length=80, null=True)),
                ('job_created', models.DateTimeField()),
            ],
            options={
                'db_table': 'job',
            },
        ),
        migrations.CreateModel(
            name='Module',
            fields=[
                ('module_id', models.AutoField(primary_key=True, serialize=False)),
                ('module_name', models.CharField(blank=True, max_length=80, null=True)),
            ],
            options={
                'db_table': 'module',
            },
        ),
        migrations.CreateModel(
            name='Project',
            fields=[
                ('project_id', models.AutoField(primary_key=True, serialize=False)),
                ('project_public_id', models.CharField(blank=True, max_length=50, null=True, unique=True)),
                ('project_name', models.CharField(blank=True, max_length=80, null=True)),
                ('project_created', models.DateTimeField()),
            ],
            options={
                'db_table': 'project',
            },
        ),
        migrations.CreateModel(
            name='Role',
            fields=[
                ('role_id', models.AutoField(primary_key=True, serialize=False)),
                ('role_name', models.CharField(blank=True, max_length=80, null=True)),
            ],
            options={
                'db_table': 'role',
            },
        ),
        migrations.CreateModel(
            name='Status',
            fields=[
                ('status_id', models.AutoField(primary_key=True, serialize=False)),
                ('status_name', models.CharField(blank=True, max_length=80, null=True)),
            ],
            options={
                'db_table': 'status',
            },
        ),
        migrations.CreateModel(
            name='Teamproject',
            fields=[
                ('teamproject_id', models.AutoField(primary_key=True, serialize=False)),
                ('teamproject_public_id', models.CharField(blank=True, max_length=50, null=True, unique=True)),
                ('teamproject_name', models.CharField(blank=True, max_length=80, null=True)),
                ('created', models.DateTimeField()),
                ('company', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Company')),
                ('status', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status')),
            ],
            options={
                'db_table': 'teamproject',
            },
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(blank=True, max_length=50, null=True)),
                ('password', models.CharField(blank=True, max_length=80, null=True)),
                ('public_id', models.CharField(blank=True, max_length=50, null=True, unique=True)),
                ('company', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Company')),
                ('role', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Role')),
            ],
            options={
                'db_table': 'user',
            },
        ),
        migrations.CreateModel(
            name='Userclient',
            fields=[
                ('userclient_id', models.AutoField(primary_key=True, serialize=False)),
                ('userclient_public_id', models.CharField(blank=True, max_length=50, null=True, unique=True)),
                ('userclient_userkey', models.CharField(blank=True, max_length=80, null=True, unique=True)),
                ('userclient_exp', models.DateTimeField()),
            ],
            options={
                'db_table': 'userclient',
            },
        ),
        migrations.CreateModel(
            name='Usersdetails',
            fields=[
                ('usersdetails_id', models.AutoField(primary_key=True, serialize=False)),
                ('usersdetails_firstname', models.CharField(blank=True, max_length=80, null=True)),
                ('usersdetails_lastname', models.CharField(blank=True, max_length=80, null=True)),
                ('usersdetails_phone', models.CharField(blank=True, max_length=80, null=True)),
                ('usersdetails_email', models.CharField(blank=True, max_length=80, null=True)),
                ('usersdetails_position', models.CharField(blank=True, max_length=80, null=True)),
                ('usersdetails_avatar', models.CharField(blank=True, max_length=64, null=True)),
                ('user_public', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.User')),
            ],
            options={
                'db_table': 'usersdetails',
            },
        ),
        migrations.CreateModel(
            name='TeamprojectHasUser',
            fields=[
                ('teamprojecthasuser_id', models.AutoField(primary_key=True, serialize=False)),
                ('teamproject_public', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Teamproject')),
                ('user_public', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.User')),
            ],
            options={
                'db_table': 'teamproject_has_user',
            },
        ),
        migrations.CreateModel(
            name='TeamprojectHasProject',
            fields=[
                ('teamprojecthasproject_id', models.AutoField(primary_key=True, serialize=False)),
                ('project_public_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Project', to_field='project_public_id')),
                ('status', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status')),
                ('teamproject_public_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Teamproject', to_field='teamproject_public_id')),
            ],
            options={
                'db_table': 'teamproject_has_project',
            },
        ),
        migrations.AddField(
            model_name='teamproject',
            name='teamproject_leader',
            field=models.ForeignKey(blank=True, db_column='teamproject_leader', null=True, on_delete=django.db.models.deletion.CASCADE, to='api.User'),
        ),
        migrations.CreateModel(
            name='Task',
            fields=[
                ('task_id', models.AutoField(primary_key=True, serialize=False)),
                ('job', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Job')),
                ('module', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Module')),
                ('status', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status')),
            ],
            options={
                'db_table': 'task',
            },
        ),
        migrations.CreateModel(
            name='Scope',
            fields=[
                ('scope_id', models.AutoField(primary_key=True, serialize=False)),
                ('scope_name', models.CharField(blank=True, max_length=80, null=True)),
                ('module', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Module')),
            ],
            options={
                'db_table': 'scope',
            },
        ),
        migrations.CreateModel(
            name='ProjectHasJob',
            fields=[
                ('project_has_job_id', models.AutoField(primary_key=True, serialize=False)),
                ('job_public_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Job', to_field='job_public_id')),
                ('project_public_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Project', to_field='project_public_id')),
                ('teamproject_public_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Teamproject', to_field='teamproject_public_id')),
            ],
            options={
                'db_table': 'project_has_job',
            },
        ),
        migrations.AddField(
            model_name='project',
            name='status',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status'),
        ),
        migrations.AddField(
            model_name='module',
            name='status',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status'),
        ),
        migrations.CreateModel(
            name='License',
            fields=[
                ('license_id', models.AutoField(primary_key=True, serialize=False)),
                ('license_name', models.CharField(blank=True, max_length=80, null=True)),
                ('status', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status')),
            ],
            options={
                'db_table': 'license',
            },
        ),
        migrations.AddField(
            model_name='job',
            name='status',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status'),
        ),
        migrations.AddField(
            model_name='company',
            name='license',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.License'),
        ),
    ]
