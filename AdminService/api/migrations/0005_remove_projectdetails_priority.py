# Generated by Django 3.0.3 on 2020-07-19 15:15

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0004_auto_20200719_2140'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='projectdetails',
            name='priority',
        ),
    ]
