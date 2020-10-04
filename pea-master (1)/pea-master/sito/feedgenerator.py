from django.contrib.syndication.views import Feed
from sito.models import *


## AGGIUNGIAMO FEED ##
class SitoFeed(Feed):
    title = "FALEGNAMERIA PEA | produzione arredamenti su misura"
    description = "La Falegnameria attiva nella produzione su misura di arredamenti per negozi, alberghi e birrerie, senza tralasciare i mobili per la casa quali cucine, tavoli, librerie, armadi"
    link = "/feed/"

    def items(self):
        return Lavori.objects.all().order_by("-pub_date")[:20]
    def item_title(self, item):
        return item.categoria.titolo
    def item_title(self, item):
        return item.titolo
    def item_description(self, item):
        return item.body
    def item_title(self, item):
        return item.titolo_uk
    def item_title(self, item):
        return item.categoria.titolo_uk
    def item_description(self, item):
        return item.body_uk
    def item_title(self, item):
        return item.image
    def item_link(self, item):
        return u"/%d" % item.id 