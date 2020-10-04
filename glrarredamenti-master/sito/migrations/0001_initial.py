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
                (b'cropping', image_cropping.fields.ImageRatioField(b'image', '500x480', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='cropping')),
                (b'slidepage', image_cropping.fields.ImageRatioField(b'image', '870x480', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='slidepage')),
                (b'croppingthumb', image_cropping.fields.ImageRatioField(b'image', '595x335', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingthumb')),
                (b'croppingslide', image_cropping.fields.ImageRatioField(b'image', '1292x500', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingslide')),
                (b'croppingcarousel', image_cropping.fields.ImageRatioField(b'image', '198x132', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingcarousel')),
                (b'croppingrender', image_cropping.fields.ImageRatioField(b'image', '1199x674', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingrender')),
                (b'designthumb', image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Design Miniatura')),
                (b'croppingbig', image_cropping.fields.ImageRatioField(b'image', '1200x800', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Design HD')),
                (b'croppingfree', image_cropping.fields.ImageRatioField(b'image', '1200x1125', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'News')),
                ('pub_date', models.DateTimeField(verbose_name=b'date published')),
            ],
            options={
                'ordering': ['id'],
                'verbose_name_plural': 'Galleria Immagini',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Prodotti',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('titolo', models.CharField(max_length=100, null=True, verbose_name=b'Titolo:', blank=True)),
                ('slide', models.CharField(blank=True, max_length=200, null=True, verbose_name=b'Carica Nella Slide in Home Page', choices=[(b'0', b'NO'), (b'1', b'SI')])),
                ('body', models.TextField(null=True, verbose_name=b'Descrizione', blank=True)),
                ('prezzo', models.CharField(max_length=100, null=True, verbose_name=b'Prezzo:', blank=True)),
                ('tassa', models.CharField(max_length=100, null=True, verbose_name=b'Iva:', blank=True)),
                ('sconto', models.CharField(max_length=100, null=True, verbose_name=b'Sconto:', blank=True)),
                ('quantita', models.CharField(max_length=100, null=True, verbose_name=b'Quantita:', blank=True)),
                ('image', models.ImageField(null=True, upload_to=b'uploaded_images', blank=True)),
                (b'cropping', image_cropping.fields.ImageRatioField(b'image', '500x281', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='cropping')),
                (b'croppingrender', image_cropping.fields.ImageRatioField(b'image', '1200x675', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingrender')),
                (b'croppingdesign', image_cropping.fields.ImageRatioField(b'image', '500x469', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name='croppingdesign')),
                (b'slidepage', image_cropping.fields.ImageRatioField(b'image', '870x480', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'immagine grande a sostituzione del filmato')),
                (b'croppingslide', image_cropping.fields.ImageRatioField(b'image', '1140x487', hide_image_field=False, size_warning=True, allow_fullsize=False, free_crop=False, adapt_rotation=False, help_text=None, verbose_name=b'Immagine gallery Home Page')),
                ('impaginazione', models.CharField(blank=True, max_length=200, null=True, choices=[(b'0', b'VERTICALE'), (b'1', b'ORIZZONTALE')])),
                ('pub_date', models.DateTimeField(verbose_name=b'date published')),
                ('categoria', models.ManyToManyField(to='sito.Categorie', null=True, blank=True)),
                ('galleria', models.ManyToManyField(to='sito.Immagini', null=True, verbose_name=b'Seleziona Immagini Galleria', blank=True)),
                ('tags', taggit.managers.TaggableManager(to='taggit.Tag', through='taggit.TaggedItem', blank=True, help_text='A comma-separated list of tags.', verbose_name=b'Parole chiave')),
            ],
            options={
                'verbose_name_plural': 'Prodotti',
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Video',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('titolo', models.CharField(max_length=100, null=True, verbose_name=b'Titolo del Video:', blank=True)),
                ('codice', models.CharField(max_length=100, null=True, verbose_name=b'Codice ID YouTube:', blank=True)),
                ('youtubeurl', models.CharField(max_length=100, null=True, verbose_name=b'Indirizzo url youtube:', blank=True)),
                ('start', models.IntegerField(default=0, null=True, verbose_name=b'Punto di Partenza del Filmato in secondi', blank=True)),
                ('embedded', models.TextField(null=True, verbose_name=b'Codice Embedded YouTube', blank=True)),
                ('thumb', models.ImageField(null=True, upload_to=b'uploaded_thum_youtube', blank=True)),
                ('link', models.CharField(max_length=100, null=True, blank=True)),
                ('didascalia', models.TextField(null=True, blank=True)),
            ],
            options={
                'verbose_name_plural': 'Galleria Video',
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='prodotti',
            name='video',
            field=models.ManyToManyField(to='sito.Video', null=True, blank=True),
            preserve_default=True,
        ),
    ]
