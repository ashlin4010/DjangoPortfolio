from django.contrib import admin
from django.urls import path, include
from django.views.generic.base import TemplateView

urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/', include('django.contrib.auth.urls')),

    # home page
    path('', TemplateView.as_view(template_name='home.html'), name='home'),

    path('manage/', include('referral.urls')),
]
