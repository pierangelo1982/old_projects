from django.conf.urls import patterns, include, url
from django.conf import settings
from sito import views
from sito.views import *


from django.conf.urls.i18n import i18n_patterns


urlpatterns = patterns('sito.views',
    url(r'^$', HomeView, name='home'),
    url(r'^chisiamo/$', ChisiamoView, name='chisiamo'),
    url(r'^servizi/$', servizi, name='servizi'),
    url(r'^categoria/(?P<post_id>\d+)/$', categoria, name='categoria'),
    url(r'^prodotti/(?P<post_id>\d+)/$', prodotto, name='prodotti'),
)
