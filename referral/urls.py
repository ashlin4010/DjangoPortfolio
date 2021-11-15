from django.conf.urls import url
from django.urls import path
from . import views

urlpatterns = [
    path('', views.person, name='manage'),
    path('people', views.person, name='people'),
    path('people/add', views.create_person, name='add_person'),
    path('people/delete/<int:pk>/', views.delete_person, name='delete_person'),
    path('people/info/<int:pk>/', views.info_person, name='info_person'),
    url(r'people/edit/(?P<pk>\w+)/(?P<enable>[a-zA-Z]+)?', views.edit_person, name='edit_person'),

    path('referrer', views.referrer, name='referrer'),
    url(r'referrer/add/(?:/(?P<referrer_type>[a-zA-Z]+)/)?', views.create_referrer, name='add_referrer'),
    path('referrer/delete/<int:pk>/', views.delete_referrer, name='delete_referrer'),
    url(r'referrer/edit/(?P<pk>\w+)/(?P<enable>[a-zA-Z]+)?', views.edit_referrer, name='edit_referrer'),

    path('referral', views.referral, name='referral'),
    path('referral/add', views.create_referral, name='add_referral'),
    path('referral/delete/<int:pk>/', views.delete_referral, name='delete_referral'),
    url(r'referral/edit/(?P<pk>\w+)/(?P<enable>[a-zA-Z]+)?', views.edit_referral, name='edit_referral'),
]