from django.shortcuts import render
from .models import Makanan
# Create your views here.

def index(request):
    return render(request, 'index.html')

def alldata(request):
    makanan = Makanan.objects.all()
    return render(request, "alldata.html", {'makanan':makanan})
