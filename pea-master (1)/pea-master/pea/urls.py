from django.conf.urls import patterns, include, url
from django.conf import settings

from django.contrib import admin

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'pea.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^', include('sito.urls')),


    url(r'^admin/', include(admin.site.urls)),
)

if settings.DEBUG:  
        urlpatterns += patterns('',  
                                #REMOVE IT in production phase  
                                (r'^media/(?P<path>.*)$', 'django.views.static.serve',  
                                {'document_root': settings.MEDIA_ROOT})
          )