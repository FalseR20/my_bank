# Generated by Django 3.2.9 on 2021-12-22 18:41

from django.db import migrations, models
import functools
import random


class Migration(migrations.Migration):

    dependencies = [
        ('mainapp', '0003_alter_accounts_balance_freeze'),
    ]

    operations = [
        migrations.AlterField(
            model_name='cards',
            name='security_code',
            field=models.IntegerField(default=functools.partial(random.Random.randint, *(1, 999), **{})),
        ),
    ]
