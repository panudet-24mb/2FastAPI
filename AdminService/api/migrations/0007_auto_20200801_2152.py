# Generated by Django 3.0.3 on 2020-08-01 14:52

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0006_auto_20200726_0125'),
    ]

    operations = [
        migrations.CreateModel(
            name='assets',
            fields=[
                ('assets_id', models.AutoField(primary_key=True, serialize=False)),
                ('assets_public_id', models.CharField(blank=True, max_length=80, null=True, unique=True)),
                ('assets_sn', models.CharField(blank=True, max_length=80, null=True)),
            ],
            options={
                'db_table': 'assets',
            },
        ),
        migrations.CreateModel(
            name='assets_brand',
            fields=[
                ('assets_brand_id', models.AutoField(primary_key=True, serialize=False)),
                ('assets_brand_name', models.CharField(blank=True, max_length=80, null=True)),
            ],
            options={
                'db_table': 'assetbrand',
            },
        ),
        migrations.CreateModel(
            name='assets_categories',
            fields=[
                ('assets_categories_id', models.AutoField(primary_key=True, serialize=False)),
                ('assets_categories_name', models.CharField(blank=True, max_length=80, null=True)),
            ],
            options={
                'db_table': 'assetscategories',
            },
        ),
        migrations.CreateModel(
            name='assets_insurance',
            fields=[
                ('assets_insurance_id', models.AutoField(primary_key=True, serialize=False)),
                ('assets_insurance_name', models.CharField(blank=True, max_length=80, null=True)),
            ],
            options={
                'db_table': 'assetsinsurance',
            },
        ),
        migrations.CreateModel(
            name='assets_storage_unit',
            fields=[
                ('assets_storage_unit_id', models.AutoField(primary_key=True, serialize=False)),
                ('assets_storage_unit_name', models.CharField(blank=True, max_length=80, null=True)),
            ],
            options={
                'db_table': 'assetsstorageunitname',
            },
        ),
        migrations.CreateModel(
            name='Customers',
            fields=[
                ('customers_id', models.AutoField(primary_key=True, serialize=False)),
                ('customers_public_id', models.CharField(max_length=80, unique=True)),
                ('customers_name', models.CharField(blank=True, max_length=80, null=True)),
                ('customers_city', models.CharField(blank=True, max_length=80, null=True)),
                ('customers_address', models.CharField(blank=True, max_length=150, null=True)),
                ('customers_postcode', models.CharField(blank=True, max_length=150, null=True)),
                ('customers_startdate', models.DateTimeField()),
                ('customers_enddate', models.DateTimeField()),
                ('created', models.DateTimeField()),
                ('customers_creator', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='customerscreator', to='api.User', to_field='public_id')),
                ('status', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status')),
            ],
            options={
                'db_table': 'custormers',
            },
        ),
        migrations.CreateModel(
            name='Platfrom',
            fields=[
                ('platform_id', models.AutoField(primary_key=True, serialize=False)),
                ('platform_name', models.CharField(blank=True, max_length=80, null=True)),
                ('status', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status')),
            ],
            options={
                'db_table': 'platform',
            },
        ),
        migrations.AlterField(
            model_name='job',
            name='job_creator',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='jobcreator', to='api.User', to_field='public_id'),
        ),
        migrations.CreateModel(
            name='Project_Platform_Customers',
            fields=[
                ('project_platform_id', models.AutoField(primary_key=True, serialize=False)),
                ('customers_public', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Customers', to_field='customers_public_id')),
                ('platfrom', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Platfrom')),
                ('status', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status')),
            ],
            options={
                'db_table': 'projectplatformcustomers',
            },
        ),
        migrations.CreateModel(
            name='Customers_has_assets',
            fields=[
                ('customer_has_assets_id', models.AutoField(primary_key=True, serialize=False)),
                ('created', models.DateTimeField()),
                ('assets', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.assets')),
                ('customers', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Customers')),
                ('status', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status')),
            ],
            options={
                'db_table': 'customershasassets',
            },
        ),
        migrations.CreateModel(
            name='assets_save_format',
            fields=[
                ('assets_save_format_id', models.AutoField(primary_key=True, serialize=False)),
                ('assets_save_format_public_id', models.CharField(blank=True, max_length=80, null=True, unique=True)),
                ('assets_save_format_name', models.CharField(blank=True, max_length=80, null=True)),
                ('assets_brand', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.assets_brand')),
                ('assets_categories', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.assets_categories')),
                ('assets_insurance', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.assets_insurance')),
                ('assets_storage_unit', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.assets_storage_unit')),
                ('status', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status')),
                ('users_creator', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='assets_save_format_creator', to='api.User', to_field='public_id')),
            ],
            options={
                'db_table': 'assetssaveformat',
            },
        ),
        migrations.AddField(
            model_name='assets',
            name='assets_brand',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.assets_brand'),
        ),
        migrations.AddField(
            model_name='assets',
            name='assets_categories',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.assets_categories'),
        ),
        migrations.AddField(
            model_name='assets',
            name='assets_insurance',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.assets_insurance'),
        ),
        migrations.AddField(
            model_name='assets',
            name='assets_storage_unit',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.assets_storage_unit'),
        ),
        migrations.AddField(
            model_name='assets',
            name='status',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Status'),
        ),
        migrations.AddField(
            model_name='assets',
            name='users_creator',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='assets_creator', to='api.User', to_field='public_id'),
        ),
        migrations.AddField(
            model_name='userclient',
            name='customers_public',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='api.Customers', to_field='customers_public_id'),
        ),
    ]
