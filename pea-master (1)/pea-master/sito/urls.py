from django.conf.urls import patterns, include, url
from django.conf import settings
from sito import views
from sito.views import *
from sito.feedgenerator import SitoFeed


from django.conf.urls.i18n import i18n_patterns


urlpatterns = patterns('sito.views',
    url(r'^$', index, name='home'),
    url(r'^json/index/$', indexJson, name='indexJson'), ##json
    url(r'^chisiamo/$', chisiamo, name='chisiamo'),
    url(r'^produzione/$', produzione, name='produzione'),
    url(r'^produzione/(?P<post_id>\d+)/$', categoria, name='categoria'),
    url(r'^dettaglio/(?P<post_id>\d+)/$', dettaglio, name='dettaglio'),
    url(r'^location/$', location, name='location'),
    url(r'^contact/$', contact, name='contact'),
    url(r'^success/$', success, name='success'),
    url(r'^language/(?P<language>[a-z\-]+)/$', language),
    url(r'^feed/$', SitoFeed()),

)