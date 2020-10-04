from django.db import models
from image_cropping import ImageRatioField, ImageCropField

from taggit.managers import TaggableManager




# Create your models here.

class Categorie(models.Model):
    titolo = models.CharField(max_length=100)

    def __unicode__(self):
        return self.titolo
        

class Immagini(models.Model):
    titolo = models.CharField(max_length=100, verbose_name="Titolo del Progetto:")
    image = models.ImageField(blank=True, null=True, upload_to='uploaded_images')
    didascalia = models.TextField(null=True, blank=True)
    cropping = ImageRatioField('image', '500x480')
    slidepage = ImageRatioField('image', '870x480')
    croppingthumb = ImageRatioField('image', '595x335')
    croppingslide = ImageRatioField('image', '1292x500')
    croppingcarousel = ImageRatioField('image', '198x132')
    croppingrender = ImageRatioField('image', '1199x674')
    designthumb = ImageRatioField('image', '500x469', verbose_name="Design Miniatura")
    croppingbig = ImageRatioField('image', '1200x800', verbose_name="Design HD")
    croppingfree = ImageRatioField('image', '1200x1125', verbose_name="News")
    pub_date = models.DateTimeField('date published')

    def __unicode__(self):
        return self.titolo

    class Meta:
        verbose_name_plural = "Galleria Immagini"
        ordering = ['id']


class Video(models.Model):
    titolo = models.CharField("Titolo del Video:", max_length=100, null=True, blank=True)
    codice = models.CharField("Codice ID YouTube:", max_length=100, null=True, blank=True)
    youtubeurl = models.CharField("Indirizzo url youtube:", max_length=100, null=True, blank=True)
    start = models.IntegerField(default=0, null=True, blank=True, verbose_name="Punto di Partenza del Filmato in secondi")
    embedded = models.TextField("Codice Embedded YouTube", null=True, blank=True)
    thumb = models.ImageField(upload_to='uploaded_thum_youtube', null=True, blank=True)
    link = models.CharField(max_length=100, null=True, blank=True)
    didascalia = models.TextField(null=True, blank=True)

    def __unicode__(self):
        return self.titolo

    class Meta:
        verbose_name_plural = "Galleria Video"

IMPAGINAZIONE_CHOICES = (
    ('0', 'VERTICALE'),
    ('1', 'ORIZZONTALE'),
                )

SLIDE_CHOICES = (
    ('0', 'NO'),
    ('1', 'SI'),
                )

class Prodotti(models.Model):
    titolo = models.CharField("Titolo:", max_length=100, null=True, blank=True)
    slide = models.CharField(choices=SLIDE_CHOICES, max_length=200, null=True, blank=True, verbose_name="Carica Nella Slide in Home Page")
    categoria = models.ManyToManyField(Categorie, null=True, blank=True)
    body = models.TextField(null=True, blank=True, verbose_name="Descrizione")
    prezzo = models.CharField("Prezzo:", max_length=100, null=True, blank=True)
    tassa = models.CharField("Iva:", max_length=100, null=True, blank=True)
    sconto = models.CharField("Sconto:", max_length=100, null=True, blank=True)
    quantita = models.CharField("Quantita:", max_length=100, null=True, blank=True)
    image = models.ImageField(blank=True, null=True, upload_to='uploaded_images')
    cropping = ImageRatioField('image', '500x281')
    croppingrender = ImageRatioField('image', '1200x675')
    croppingdesign = ImageRatioField('image', '500x469')
    slidepage = ImageRatioField('image', '870x480', verbose_name="immagine grande a sostituzione del filmato")
    croppingslide = ImageRatioField('image', '1140x487', verbose_name="Immagine gallery Home Page")
    impaginazione = models.CharField(choices=IMPAGINAZIONE_CHOICES, max_length=200, null=True, blank=True)
    video = models.ManyToManyField(Video, null=True, blank=True)
    galleria = models.ManyToManyField(Immagini, null=True, blank=True, verbose_name="Seleziona Immagini Galleria")
    pub_date = models.DateTimeField('date published')
    tags = TaggableManager(verbose_name="Parole chiave", blank=True)
    
    def __unicode__(self):
        return self.titolo

    class Meta:
        verbose_name_plural = "Prodotti"




