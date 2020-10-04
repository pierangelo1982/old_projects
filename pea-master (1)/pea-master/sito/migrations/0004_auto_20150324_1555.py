# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('sito', '0003_auto_20150319_1806'),
    ]

    operations = [
        migrations.AddField(
            model_name='lavori',
            name='titolo_uk',
            field=models.CharField(max_length=100, null=True, verbose_name=b'Titolo Inglese:', blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='lavori',
            name='body',
            field=models.TextField(null=True, verbose_name=b'Descrizione Inglese', blank=True),
            preserve_default=True,
        ),
    ]
