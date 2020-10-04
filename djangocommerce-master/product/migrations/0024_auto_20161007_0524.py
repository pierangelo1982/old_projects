# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-10-07 05:24
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0023_auto_20161006_1903'),
    ]

    operations = [
        migrations.AddField(
            model_name='color',
            name='name_fr',
            field=models.CharField(blank=True, max_length=250, null=True, verbose_name='nome colore Francese'),
        ),
        migrations.AddField(
            model_name='color',
            name='name_uk',
            field=models.CharField(blank=True, max_length=250, null=True, verbose_name='nome colore Inglese'),
        ),
    ]
