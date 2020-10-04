# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import image_cropping.fields


class Migration(migrations.Migration):

    dependencies = [
        ('sito', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Slider',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('titolo', models.CharField(max_length=100, verbose_name=b'Titolo del Progetto:')),
                ('image', models.ImageField(null=True, upload_to=b'uploaded_images', blank=True)),
                ('active', models.BooleanField(default=False)),
                ('didascalia', models.TextField(null=True, blank=True)),
                (b'cropping', image_cropping.fields.ImageRatioField(b'image', '1170x500', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='cropping')),
                (b'slidepage', image_cropping.fields.ImageRatioField(b'image', '870x480', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='slidepage')),
                ('pub_date', models.DateTimeField(verbose_name=b'date published')),
            ],
            options={
                'verbose_name_plural': 'Galleria Immagini',
            },
            bases=(models.Model,),
        ),
        migrations.AlterField(
            model_name='immagini',
            name=b'cropping',
            field=image_cropping.fields.ImageRatioField(b'image', '500x480', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='cropping'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='immagini',
            name=b'croppingcarousel',
            field=image_cropping.fields.ImageRatioField(b'image', '198x132', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingcarousel'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='immagini',
            name=b'croppingrender',
            field=image_cropping.fields.ImageRatioField(b'image', '1199x674', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingrender'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='immagini',
            name=b'croppingslide',
            field=image_cropping.fields.ImageRatioField(b'image', '1140x487', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingslide'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='immagini',
            name=b'croppingthumb',
            field=image_cropping.fields.ImageRatioField(b'image', '595x335', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingthumb'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='immagini',
            name=b'designbig',
            field=image_cropping.fields.ImageRatioField(b'image', '1200x800', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Design HD'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='immagini',
            name=b'designnews',
            field=image_cropping.fields.ImageRatioField(b'image', '1200x1125', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'News'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='immagini',
            name=b'designthumb',
            field=image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Design Miniatura'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='immagini',
            name=b'slidepage',
            field=image_cropping.fields.ImageRatioField(b'image', '870x480', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='slidepage'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='lavori',
            name=b'cropping',
            field=image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Cropping'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='lavori',
            name=b'croppingfree',
            field=image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Free Crop'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='lavori',
            name=b'croppingminiatura',
            field=image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Miniatura'),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='lavori',
            name=b'croppingslider',
            field=image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Slider Revolution'),
            preserve_default=True,
        ),
    ]
