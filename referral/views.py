from django.shortcuts import render, redirect, get_object_or_404
from .models import Person
from .models import Referrer
from .forms import PersonForm
from django.views.generic import ListView, DetailView


def nav_panel(request):
    return render(request, 'navigation_panel.html', {})


def person(request):
    return render(request, 'view_people.html', {"list": Person.objects.all()})


# person  #########################################################################################
def create_person(request):
    if request.method == 'POST':
        form = PersonForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('people')
    form = PersonForm()

    return render(request, 'create_people.html', {'form': form})


def delete_person(request, pk, template_name='confirm_delete.html'):
    row = get_object_or_404(Person, pk=pk)
    if request.method == 'POST':
        row.delete()
        return redirect('people')
    return render(request, template_name, {'object': row})


# referrer #########################################################################################
def referrer(request):
    return render(request, 'view_referrer.html', {"list": Referrer.objects.all()})


def delete_referrer(request, pk, template_name='confirm_delete.html'):
    row = get_object_or_404(Referrer, pk=pk)
    if request.method == 'POST':
        row.delete()
        return redirect('referrer')
    return render(request, template_name, {'object': row})
