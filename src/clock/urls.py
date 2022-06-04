from django.urls import path

from . import views

app_name = 'clock'
urlpatterns = [
    path('', views.index, name='index'),
    path('getnow/', views.getnow, name='getnow')
]