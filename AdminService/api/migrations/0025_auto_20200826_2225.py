# Generated by Django 3.0.3 on 2020-08-26 15:25

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0024_auto_20200826_2222'),
    ]

    operations = [
        migrations.AlterField(
            model_name='requeststatus',
            name='created',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 8, 26, 22, 25, 43, 956296)),
        ),
        migrations.AlterField(
            model_name='userrequest',
            name='userrequest_created',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2020, 8, 26, 22, 25, 43, 955295)),
        ),
    ]
