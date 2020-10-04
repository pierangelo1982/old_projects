from django.shortcuts import render
from django.shortcuts import render_to_response, get_object_or_404
from django.http import HttpResponse
from django.template import RequestContext
from django.views.generic import ListView, DetailView
from sito.models import *
from django.http import HttpResponseRedirect
from django.contrib.syndication.views import Feed

# Create your views here.


def HomeView(request):
	carousel_list = Immagini.objects.all()
	categorie_list = Categorie.objects.all().order_by('id')
	context = {'categorie_list': categorie_list,
				'carousel_list':carousel_list}
	return render(request, 'home.html', context)
   #return render_to_response('home.html', context_instance=RequestContext(request))

def categoria(request, post_id):
    categoria = Categorie.objects.get(pk=post_id)
    context = {'categoria': categoria}
    return render_to_response('categoria.html', context, context_instance=RequestContext(request))

def prodotto(request, post_id):
    prodotti = Prodotti.objects.get(pk=post_id)
    context = {'prodotti': prodotti}
    return render_to_response('prodotti.html', context, context_instance=RequestContext(request))


def ChisiamoView(request):
    return render_to_response('chisiamo.html', context_instance=RequestContext(request))

def servizi(request):
    return render_to_response('servizi.html', context_instance=RequestContext(request))

    
'''
def StudioView(request):
    return render(request, 'studio.html', context)
'''
