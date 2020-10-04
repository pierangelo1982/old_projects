from django.contrib import admin
from sito.models import *

from image_cropping import ImageCroppingMixin

class MyModelAdmin(ImageCroppingMixin, admin.ModelAdmin):
    pass


admin.site.register(Prodotti, MyModelAdmin)
admin.site.register(Categorie, MyModelAdmin)
admin.site.register(Immagini, MyModelAdmin)
admin.site.register(Video, MyModelAdmin)
