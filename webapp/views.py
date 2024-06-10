from django.shortcuts import render

# Create your views here.

def index(request):
    return render(request, 'index.html')

def alldata(request):
    return render(request, 'alldata.html')