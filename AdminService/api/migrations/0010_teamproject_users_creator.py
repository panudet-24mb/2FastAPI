# Generated by Django 3.0.6 on 2020-08-03 06:22

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0009_company_company_code'),
    ]

    operations = [
        migrations.AddField(
            model_name='teamproject',
            name='users_creator',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='Teamproject_creator', to='api.User', to_field='public_id'),
        ),
    ]
