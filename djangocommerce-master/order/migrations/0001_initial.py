# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-09-19 21:11
from __future__ import unicode_literals

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('product', '0019_auto_20160915_1938'),
    ]

    operations = [
        migrations.CreateModel(
            name='Order',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('code', models.CharField(blank=True, max_length=250, null=True, verbose_name='Codice')),
                ('tot_price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True, verbose_name='Prezzo')),
                ('tot_discount', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True, verbose_name='Totale Scontato')),
                ('tot_price_reserved', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True, verbose_name='Prezzo Scontato Riservato')),
                ('pub_date', models.DateTimeField(verbose_name='date published')),
                ('inlavorazione', models.BooleanField(default=False, verbose_name='in lavorazione')),
                ('pagato', models.BooleanField(default=False, verbose_name='pagato')),
                ('spedito', models.BooleanField(default=False, verbose_name='spedito')),
                ('chiuso', models.BooleanField(default=False, verbose_name='chiuso')),
                ('user', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL, verbose_name='Utente')),
            ],
            options={
                'ordering': ['id'],
                'verbose_name_plural': 'Ordine',
            },
        ),
        migrations.CreateModel(
            name='OrderItem',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('price', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True, verbose_name='Prezzo')),
                ('price_total', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True, verbose_name='Prezzo')),
                ('price_discount', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True, verbose_name='Prezzo')),
                ('price_reserved', models.DecimalField(blank=True, decimal_places=2, max_digits=10, null=True, verbose_name='Prezzo')),
                ('quantity', models.IntegerField(blank=True, null=True, verbose_name='quantita')),
                ('pub_date', models.DateTimeField(editable=False, verbose_name='date published')),
                ('cintureLunghezza', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='product.CintureLunghezza', verbose_name='Lunghezza Cinture')),
                ('color', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='product.Color', verbose_name='Colore')),
                ('composition', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='product.Composition', verbose_name='Composizione')),
                ('order', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='order.Order', verbose_name='Utente')),
                ('product', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='product.Product', verbose_name='Prodotto')),
                ('scarpemisura', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='product.TagliaScarpe', verbose_name='Misura scarpe')),
            ],
            options={
                'ordering': ['id'],
                'verbose_name_plural': 'Prodotti in Ordine',
            },
        ),
    ]