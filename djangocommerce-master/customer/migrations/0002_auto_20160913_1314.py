# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-09-13 13:14
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('customer', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customer',
            name='discount',
            field=models.IntegerField(blank=True, default=0, null=True, verbose_name='sconto percentuale'),
        ),
    ]