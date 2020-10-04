# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sito', '0004_auto_20150324_1555'),
    ]

    operations = [
        migrations.AddField(
            model_name='lavori',
            name='body_uk',
            field=models.TextField(null=True, verbose_name=b'Descrizione Inglese', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='lavori',
            name='body',
            field=models.TextField(null=True, verbose_name=b'Descrizione', blank=True),
            preserve_default=True,
        ),
    ]
