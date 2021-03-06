# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-08-29 10:53
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import filer.fields.folder
import image_cropping.fields
import taggit.managers


class Migration(migrations.Migration):

    dependencies = [
        ('filer', '0006_auto_20160623_1627'),
        ('taggit', '0002_auto_20150616_2121'),
        ('product', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='CintureLunghezza',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, verbose_name='nome')),
                ('misure', models.CharField(blank=True, max_length=250, null=True, verbose_name='taglia')),
                ('lunghezza', models.IntegerField(blank=True, null=True, verbose_name='lunghezza')),
            ],
            options={
                'verbose_name_plural': 'Lunghezza Cinture',
            },
        ),
        migrations.CreateModel(
            name='Composition',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, verbose_name='Titolo:')),
                ('code', models.CharField(blank=True, max_length=250, null=True, verbose_name='Codice')),
                ('designer', models.CharField(blank=True, max_length=250, null=True)),
                ('price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True, verbose_name='Prezzo')),
                ('discount', models.IntegerField(blank=True, null=True, verbose_name='sconto percentuale')),
                ('price_offer', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True, verbose_name='Prezzo Scontato')),
                ('image', models.ImageField(blank=True, null=True, upload_to='product', verbose_name='Immagine')),
                ('slider', image_cropping.fields.ImageRatioField('image', '1170x600', adapt_rotation=False, allow_fullsize=False, free_crop=False, help_text=None, hide_image_field=False, size_warning=True, verbose_name='Slider')),
                ('thumb', image_cropping.fields.ImageRatioField('image', '800x578', adapt_rotation=False, allow_fullsize=False, free_crop=False, help_text=None, hide_image_field=False, size_warning=True, verbose_name='Miniatura')),
                ('thumbdue', image_cropping.fields.ImageRatioField('image', '745x558', adapt_rotation=False, allow_fullsize=False, free_crop=False, help_text=None, hide_image_field=False, size_warning=True, verbose_name='Miniatura pagina dettaglio')),
                ('croplibero', image_cropping.fields.ImageRatioField('image', '595x335', adapt_rotation=False, allow_fullsize=False, free_crop=True, help_text=None, hide_image_field=False, size_warning=True, verbose_name='Ritaglio Libero')),
                ('quantity', models.IntegerField(blank=True, null=True, verbose_name='sconto percentuale')),
                ('size', models.CharField(blank=True, max_length=250, null=True, verbose_name='Misure')),
                ('width', models.IntegerField(blank=True, null=True, verbose_name='larghezza')),
                ('lenght', models.IntegerField(blank=True, null=True, verbose_name='lunghezza')),
                ('depth', models.IntegerField(blank=True, null=True, verbose_name='Profondita')),
                ('height', models.IntegerField(blank=True, null=True, verbose_name='altezza')),
                ('volume', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True, verbose_name='Volume')),
                ('descrizione', models.TextField(blank=True, null=True, verbose_name='descrizione')),
                ('prompt_delivery', models.BooleanField(default=False, verbose_name='Pronta Consegna')),
                ('delivery', models.BooleanField(default=False, verbose_name='Consegna 40gg')),
                ('pub_date', models.DateTimeField(verbose_name='date published')),
                ('active', models.BooleanField(default=False, verbose_name='attiva')),
                ('slide', models.BooleanField(default=False, verbose_name='Mostra in Slide')),
                ('promo', models.BooleanField(default=False, verbose_name='Mostra in Promo')),
                ('album', filer.fields.folder.FilerFolderField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='filer.Folder')),
                ('category', models.ManyToManyField(blank=True, null=True, to='product.Category', verbose_name='Seleziona Categorie')),
            ],
            options={
                'ordering': ['id'],
                'verbose_name_plural': 'Composizioni',
            },
        ),
        migrations.CreateModel(
            name='TagliaScarpe',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100, verbose_name='nome')),
                ('taglia', models.CharField(blank=True, max_length=250, null=True, verbose_name='taglia')),
            ],
            options={
                'verbose_name_plural': 'Taglia Scarpe',
            },
        ),
        migrations.AlterModelOptions(
            name='material',
            options={'verbose_name_plural': 'Metalli'},
        ),
        migrations.AddField(
            model_name='color',
            name='category',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='product.Category', verbose_name='Seleziona Categoria'),
        ),
        migrations.AddField(
            model_name='color',
            name='thumb',
            field=image_cropping.fields.ImageRatioField('image', '800x578', adapt_rotation=False, allow_fullsize=False, free_crop=False, help_text=None, hide_image_field=False, size_warning=True, verbose_name='Miniatura'),
        ),
        migrations.AddField(
            model_name='product',
            name='accessory',
            field=models.ManyToManyField(blank=True, null=True, to='product.Accessory', verbose_name='Accessori'),
        ),
        migrations.AlterField(
            model_name='accessory',
            name='descrizione',
            field=models.TextField(blank=True, null=True, verbose_name='Descrizione'),
        ),
        migrations.AlterField(
            model_name='accessory',
            name='quantity',
            field=models.IntegerField(blank=True, null=True, verbose_name='Quantita'),
        ),
        migrations.AlterField(
            model_name='accessory',
            name='thumb',
            field=image_cropping.fields.ImageRatioField('image', '800x578', adapt_rotation=False, allow_fullsize=False, free_crop=False, help_text=None, hide_image_field=False, size_warning=True, verbose_name='Miniatura'),
        ),
        migrations.AlterField(
            model_name='product',
            name='descrizione',
            field=models.TextField(blank=True, null=True, verbose_name='Descrizione'),
        ),
        migrations.AlterField(
            model_name='product',
            name='material',
            field=models.ManyToManyField(blank=True, null=True, to='product.Material', verbose_name='Seleziona Metallo'),
        ),
        migrations.AlterField(
            model_name='product',
            name='thumb',
            field=image_cropping.fields.ImageRatioField('image', '800x578', adapt_rotation=False, allow_fullsize=False, free_crop=False, help_text=None, hide_image_field=False, size_warning=True, verbose_name='Miniatura'),
        ),
        migrations.AddField(
            model_name='composition',
            name='color',
            field=models.ManyToManyField(blank=True, null=True, to='product.Color', verbose_name='Seleziona Colori'),
        ),
        migrations.AddField(
            model_name='composition',
            name='component',
            field=models.ManyToManyField(blank=True, null=True, to='product.Product', verbose_name='Componenti'),
        ),
        migrations.AddField(
            model_name='composition',
            name='manufacturer',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='product.Manufacturer', verbose_name='Marca'),
        ),
        migrations.AddField(
            model_name='composition',
            name='material',
            field=models.ManyToManyField(blank=True, null=True, to='product.Material', verbose_name='Seleziona Materiali'),
        ),
        migrations.AddField(
            model_name='composition',
            name='tags',
            field=taggit.managers.TaggableManager(blank=True, help_text='A comma-separated list of tags.', through='taggit.TaggedItem', to='taggit.Tag', verbose_name='Parole chiave'),
        ),
        migrations.AddField(
            model_name='product',
            name='cintureLunghezza',
            field=models.ManyToManyField(blank=True, null=True, to='product.CintureLunghezza', verbose_name='Lungheza Cinture'),
        ),
        migrations.AddField(
            model_name='product',
            name='scarpemisura',
            field=models.ManyToManyField(blank=True, null=True, to='product.TagliaScarpe', verbose_name='Taglia Scarpe'),
        ),
    ]
