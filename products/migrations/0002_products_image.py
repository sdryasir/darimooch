# Generated by Django 5.0.6 on 2024-06-25 10:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('products', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='products',
            name='image',
            field=models.FileField(max_length=60, null=True, upload_to='products/'),
        ),
    ]
