# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-10-27 13:50
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('customer', '0004_auto_20160923_1737'),
    ]

    operations = [
        migrations.RenameField(
            model_name='fatturazione',
            old_name='e_mail',
            new_name='myemail',
        ),
    ]
