# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-09-05 13:39
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('product', '0004_auto_20160831_1326'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='composition',
            name='depth',
        ),
        migrations.RemoveField(
            model_name='composition',
            name='descrizione',
        ),
        migrations.RemoveField(
            model_name='composition',
            name='height',
        ),
        migrations.RemoveField(
            model_name='composition',
            name='lenght',
        ),
        migrations.RemoveField(
            model_name='composition',
            name='size',
        ),
        migrations.RemoveField(
            model_name='composition',
            name='volume',
        ),
        migrations.RemoveField(
            model_name='composition',
            name='width',
        ),
        migrations.AddField(
            model_name='product',
            name='cintureLunghezza',
            field=models.ManyToManyField(blank=True, null=True, to='product.CintureLunghezza', verbose_name='Lungheza Cinture'),
        ),
        migrations.AddField(
            model_name='product',
            name='color',
            field=models.ManyToManyField(blank=True, null=True, to='product.Color', verbose_name='Seleziona Colori'),
        ),
        migrations.AddField(
            model_name='product',
            name='material',
            field=models.ManyToManyField(blank=True, null=True, to='product.Material', verbose_name='Seleziona Metallo'),
        ),
        migrations.AddField(
            model_name='product',
            name='scarpemisura',
            field=models.ManyToManyField(blank=True, null=True, to='product.TagliaScarpe', verbose_name='Taglia Scarpe'),
        ),
    ]
