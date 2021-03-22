from django.shortcuts import render
from django.views import generic
from django.http import HttpResponse

def index(request):
    return HttpResponse("Greetings, please proceed to /blog or /polls. Homepage is broken...")