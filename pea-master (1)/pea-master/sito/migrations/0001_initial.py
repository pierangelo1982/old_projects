# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import image_cropping.fields
import taggit.managers


class Migration(migrations.Migration):

    dependencies = [
        ('taggit', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Categorie',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('titolo', models.CharField(max_length=100)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Immagini',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('titolo', models.CharField(max_length=100, verbose_name=b'Titolo del Progetto:')),
                ('image', models.ImageField(null=True, upload_to=b'uploaded_images', blank=True)),
                ('didascalia', models.TextField(null=True, blank=True)),
                (b'cropping', image_cropping.fields.ImageRatioField(b'image', '500x480', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='cropping')),
                (b'slidepage', image_cropping.fields.ImageRatioField(b'image', '870x480', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='slidepage')),
                (b'croppingthumb', image_cropping.fields.ImageRatioField(b'image', '595x335', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingthumb')),
                (b'croppingslide', image_cropping.fields.ImageRatioField(b'image', '1140x487', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingslide')),
                (b'croppingcarousel', image_cropping.fields.ImageRatioField(b'image', '198x132', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingcarousel')),
                (b'croppingrender', image_cropping.fields.ImageRatioField(b'image', '1199x674', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingrender')),
                (b'designthumb', image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Design Miniatura')),
                (b'designbig', image_cropping.fields.ImageRatioField(b'image', '1200x800', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Design HD')),
                (b'designnews', image_cropping.fields.ImageRatioField(b'image', '1200x1125', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'News')),
                ('pub_date', models.DateTimeField(verbose_name=b'date published')),
            ],
            options={
                'verbose_name_plural': 'Galleria Immagini',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Lavori',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('titolo', models.CharField(max_length=100, null=True, verbose_name=b'Titolo:', blank=True)),
                ('body', models.TextField(null=True, verbose_name=b'Descrizione', blank=True)),
                ('image', models.ImageField(null=True, upload_to=b'uploaded_images', blank=True)),
                (b'croppingminiatura', image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Miniatura')),
                (b'croppingslider', image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Slider Revolution')),
                (b'cropping', image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Cropping')),
                (b'croppingfree', image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=False, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Free Crop')),
                ('video', models.CharField(max_length=100, null=True, verbose_name=b'Video:', blank=True)),
                ('pub_date', models.DateTimeField(verbose_name=b'date published')),
                ('categoria', models.ForeignKey(blank=True, to='sito.Categorie', null=True)),
                ('galleria', models.ManyToManyField(to='sito.Immagini', null=True, verbose_name=b'Seleziona Immagini Galleria', blank=True)),
                ('tags', taggit.managers.TaggableManager(to='taggit.Tag', through='taggit.TaggedItem', blank=True, help_text='A comma-separated list of tags.', verbose_name=b'Parole chiave')),
            ],
            options={
                'ordering': ['id'],
                'verbose_name_plural': 'Lavori/Realizzazioni',
            },
            bases=(models.Model,),
        ),
    ]
