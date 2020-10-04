# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import image_cropping.fields


class Migration(migrations.Migration):

    dependencies = [
        ('sito', '0002_auto_20150313_1817'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='slider',
            options={'verbose_name_plural': 'Slider in Homepage'},
        ),
        migrations.AlterField(
            model_name='immagini',
            name=b'croppingthumb',
            field=image_cropping.fields.ImageRatioField(b'image', '600x450', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingthumb'),
            preserve_default=True,
        ),
    ]
