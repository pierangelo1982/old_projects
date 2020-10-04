# -*- coding: utf-8 -*-
# Generated by Django 1.9.7 on 2016-10-11 10:29
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0022_product_top_seller'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='color',
            options={'ordering': ['name'], 'verbose_name_plural': 'Colori'},
        ),
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
        migrations.AddField(
            model_name='composition',
            name='name_fr',
            field=models.CharField(editable=False, max_length=100, null=True, verbose_name='Titolo Francese:'),
        ),
        migrations.AddField(
            model_name='composition',
            name='name_uk',
            field=models.CharField(editable=False, max_length=100, null=True, verbose_name='Titolo Inglese:'),
        ),
    ]