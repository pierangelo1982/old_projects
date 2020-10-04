# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sito', '0005_auto_20150324_1556'),
    ]

    operations = [
        migrations.AddField(
            model_name='categorie',
            name='titolo_uk',
            field=models.CharField(max_length=100, null=True, verbose_name=b'Titolo Inglese:', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='categorie',
            name='titolo',
            field=models.CharField(max_length=100, verbose_name=b'Titolo:'),
            preserve_default=True,
        ),
    ]
