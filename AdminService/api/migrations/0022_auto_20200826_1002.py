# Generated by Django 3.0.6 on 2020-08-26 03:02

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0021_auto_20200810_1842'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='customers_has_assets',
            name='job_has_assets',
        ),
        migrations.AddField(
            model_name='customers_has_assets',
            name='assets',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.assets'),
        ),
    ]
