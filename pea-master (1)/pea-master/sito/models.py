from django.db import models
from image_cropping import ImageRatioField, ImageCropField
from taggit.managers import TaggableManager
from django import forms


# Create your models here.

class Categorie(models.Model):
    titolo = models.CharField("Titolo:", max_length=100)
    titolo_uk = models.CharField("Titolo Inglese:", max_length=100, null=True, blank=True)

    def __unicode__(self):
		return self.titolo


class Immagini(models.Model):
	titolo = models.CharField(max_length=100, verbose_name="Titolo del Progetto:")
	image = models.ImageField(blank=True, null=True, upload_to='uploaded_images')
	didascalia = models.TextField(null=True, blank=True)
	cropping = ImageRatioField('image', '500x480')
	slidepage = ImageRatioField('image', '870x480')
	croppingthumb = ImageRatioField('image', '600x450')
	croppingslide = ImageRatioField('image', '1140x487')
	croppingcarousel = ImageRatioField('image', '198x132')
	croppingrender = ImageRatioField('image', '1199x674')
	designthumb = ImageRatioField('image', '500x469', verbose_name="Design Miniatura")
	designbig = ImageRatioField('image', '1200x800', verbose_name="Design HD")
	designnews = ImageRatioField('image', '1200x1125', verbose_name="News")
	pub_date = models.DateTimeField('date published')

	def __unicode__(self):
		return self.titolo
	class Meta:
		verbose_name_plural = "Galleria Immagini"
        ordering = ['id']


class Lavori(models.Model):
    titolo = models.CharField("Titolo:", max_length=100, null=True, blank=True)
    titolo_uk = models.CharField("Titolo Inglese:", max_length=100, null=True, blank=True)
    categoria = models.ForeignKey(Categorie, null=True, blank=True)
    body = models.TextField(null=True, blank=True, verbose_name="Descrizione")
    body_uk = models.TextField(null=True, blank=True, verbose_name="Descrizione Inglese")
    image = models.ImageField(blank=True, null=True, upload_to='uploaded_images')
    croppingminiatura = ImageRatioField('image', '500x469', verbose_name="Miniatura")
    croppingslider = ImageRatioField('image', '500x469', verbose_name="Slider Revolution")
    cropping = ImageRatioField('image', '500x469', verbose_name="Cropping")
    croppingfree = ImageRatioField('image', '500x469', verbose_name="Free Crop")
    galleria = models.ManyToManyField(Immagini, null=True, blank=True, verbose_name="Seleziona Immagini Galleria")
    video = models.CharField("Video:", max_length=100, null=True, blank=True)
    tags = TaggableManager(verbose_name="Parole chiave", blank=True)
    pub_date = models.DateTimeField('date published')

    def __unicode__(self):
        return self.titolo

    class Meta:
        verbose_name_plural = "Lavori/Realizzazioni"
        ordering = ['id']

class Slider(models.Model):
	titolo = models.CharField(max_length=100, verbose_name="Titolo del Progetto:")
	image = models.ImageField(blank=True, null=True, upload_to='uploaded_images')
	active = models.BooleanField(default=False)
	didascalia = models.TextField(null=True, blank=True)
	cropping = ImageRatioField('image', '1170x500')
	slidepage = ImageRatioField('image', '870x480')
	pub_date = models.DateTimeField('date published')

	def __unicode__(self):
		return self.titolo
        
	class Meta:
		verbose_name_plural = "Slider in Homepage"
        ordering = ['id']


class ContactForm(forms.Form):
    nome = forms.CharField(label='Nome', max_length=100)
    cognome = forms.CharField(label='Cognome', max_length=100)
    telefono = forms.CharField(label='Telefono', max_length=100, required = False)
    fax = forms.CharField(label='Fax', max_length=100, required = False)
    email = forms.CharField(label='email', max_length=100)
    citta = forms.CharField(label='Citta', max_length=100, required = False)
    indirizzo = forms.CharField(label='Indirizzo', max_length=100, required = False)
    messaggio = forms.CharField(label='Messaggio', widget=forms.Textarea, required = False)