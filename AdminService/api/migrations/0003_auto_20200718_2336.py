# Generated by Django 3.0.3 on 2020-07-18 16:36

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_auto_20200718_2231'),
    ]

    operations = [
        migrations.CreateModel(
            name='Priority',
            fields=[
                ('priority_id', models.AutoField(primary_key=True, serialize=False)),
                ('priority_name', models.CharField(blank=True, max_length=80, null=True)),
            ],
            options={
                'db_table': 'priority',
            },
        ),
        migrations.RemoveField(
            model_name='teamproject',
            name='teamproject_leader',
        ),
        migrations.AddField(
            model_name='job',
            name='job_creator',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.User', to_field='public_id'),
        ),
        migrations.AddField(
            model_name='project',
            name='project_creator',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.User', to_field='public_id'),
        ),
        migrations.AddField(
            model_name='role',
            name='status',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status'),
        ),
        migrations.AddField(
            model_name='task',
            name='task_public_id',
            field=models.CharField(blank=True, max_length=50, null=True, unique=True),
        ),
        migrations.AlterField(
            model_name='teamprojecthasuser',
            name='teamproject_public',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Teamproject', to_field='teamproject_public_id'),
        ),
        migrations.AlterField(
            model_name='teamprojecthasuser',
            name='user_public',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.User', to_field='public_id'),
        ),
        migrations.AlterField(
            model_name='usersdetails',
            name='user_public',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.User', to_field='public_id'),
        ),
        migrations.AlterField(
            model_name='usersdetails',
            name='usersdetails_avatar',
            field=models.CharField(blank=True, max_length=104, null=True),
        ),
        migrations.CreateModel(
            name='TeamprojectLevel',
            fields=[
                ('teamproject_id', models.AutoField(primary_key=True, serialize=False)),
                ('teamproject_level', models.CharField(blank=True, max_length=50, null=True)),
                ('teamproject_public', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Teamproject', to_field='teamproject_public_id')),
                ('user_public', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.User', to_field='public_id')),
            ],
            options={
                'db_table': 'teamprojectlevel',
            },
        ),
        migrations.CreateModel(
            name='ProjectDetails',
            fields=[
                ('projectdetails_id', models.AutoField(primary_key=True, serialize=False)),
                ('projectdetails_location', models.CharField(blank=True, max_length=80, null=True)),
                ('projectdetails_desc', models.CharField(blank=True, max_length=80, null=True)),
                ('projectdetails_manual', models.CharField(blank=True, max_length=80, null=True)),
                ('projectdetails_note', models.CharField(blank=True, max_length=255, null=True)),
                ('priority', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Priority')),
                ('project_public', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Project', to_field='project_public_id')),
                ('projectdetails_creator', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.User', to_field='public_id')),
            ],
            options={
                'db_table': 'projectdetails',
            },
        ),
    ]