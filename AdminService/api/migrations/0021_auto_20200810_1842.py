# Generated by Django 3.0.6 on 2020-08-10 11:42

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0020_auto_20200810_1831'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customers_has_assets',
            name='customers_public',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Customers', to_field='customers_public_id'),
        ),
    ]
