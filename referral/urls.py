from django.urls import path
from . import views

urlpatterns = [
    path('', views.person, name='manage'),
    path('people', views.person, name='people'),
    path('people/add', views.create_person, name='add_person'),
    path('people/delete/<int:pk>/', views.delete_person, name='delete_person'),

    path('referrer', views.referrer, name='referrer'),
    path('referrer/delete/<int:pk>/', views.delete_referrer, name='delete_referrer'),
]
