# Generated by Django 3.0.6 on 2020-08-03 08:18

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0010_teamproject_users_creator'),
    ]

    operations = [
        migrations.CreateModel(
            name='assets_series',
            fields=[
                ('assets_series_id', models.AutoField(primary_key=True, serialize=False)),
                ('assets_series_name', models.CharField(blank=True, max_length=80, null=True)),
            ],
            options={
                'db_table': 'assetsseries',
            },
        ),
        migrations.AddField(
            model_name='assets',
            name='assets_series',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.assets_series'),
        ),
    ]
