from django.shortcuts import render, redirect, get_object_or_404
from .models import Person
from .models import Referrer
from .models import Referral
from .forms import PersonForm
from .forms import ReferrerForm
from .forms import ReferralForm
from .forms import OrgFormReferrer
from .forms import IndReferrerForm
from django.contrib.auth.decorators import login_required


# person  #########################################################################################
@login_required
def person(request):
    return render(request, 'view_people.html', {"list": Person.objects.all()})


@login_required
def info_person(request, pk):
    row = get_object_or_404(Person, pk=pk)
    referrals = Referral.objects.select_related('person', 'referrer').filter(person=pk)
    return render(request, 'info_people.html', {'person': row, 'list': referrals})


@login_required
def create_person(request):
    if request.method == 'POST':
        form = PersonForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('people')
    form = PersonForm()

    return render(request, 'create_people.html', {'form': form})


@login_required
def delete_person(request, pk, template_name='confirm_delete.html'):
    row = get_object_or_404(Person, pk=pk)
    if request.method == 'POST':
        row.delete()
        return redirect('people')
    return render(request, template_name, {'object': row})


@login_required
def edit_person(request, pk, enable=""):
    enable = enable == ""
    row = get_object_or_404(Person, pk=pk)
    form = PersonForm(request.POST or None, instance=row)
    if form.is_valid():
        form.save()
        return redirect('people')
    return render(request, 'edit_person.html', {'form': form, 'enable': enable})


# referrer #########################################################################################
@login_required
def referrer(request):
    return render(request, 'view_referrer.html', {"list": Referrer.objects.all()})


@login_required
def create_referrer(request, referrer_type=""):
    referrer_form = OrgFormReferrer if referrer_type == "ORGANISATION" else IndReferrerForm
    referrer_form = ReferrerForm if referrer_type == "" else referrer_form

    if request.method == 'POST':
        form = referrer_form(request.POST)
        if form.is_valid():
            form.save()
            return redirect('referrer')
    form = referrer_form()
    form.fields['type'].initial = referrer_type

    return render(request, 'create_referrer.html', {'form': form, 'type': referrer_type})


@login_required
def delete_referrer(request, pk, template_name='confirm_delete.html'):
    row = get_object_or_404(Referrer, pk=pk)
    if request.method == 'POST':
        row.delete()
        return redirect('referrer')
    return render(request, template_name, {'object': row})


@login_required
def edit_referrer(request, pk, enable=""):
    enable = enable == ""
    row = get_object_or_404(Referrer, pk=pk)
    form = ReferrerForm(request.POST or None, instance=row)
    if form.is_valid():
        form.save()
        return redirect('referrer')
    return render(request, 'edit_referrer.html', {'form': form, 'enable': enable})


# Referral ########################################################################################
@login_required
def referral(request):
    referrals = Referral.objects.select_related('person', 'referrer')
    return render(request, 'view_referral.html', {"list": referrals})


@login_required
def create_referral(request):
    if request.method == 'POST':
        form = ReferralForm(request.POST)
        if form.is_valid():
            form.save()
            return redirect('referral')
    form = ReferralForm()

    return render(request, 'create_referral.html', {'form': form})


@login_required
def delete_referral(request, pk, template_name='confirm_delete.html'):
    row = get_object_or_404(Referral, pk=pk)
    if request.method == 'POST':
        row.delete()
        return redirect('referral')
    return render(request, template_name, {'object': row})


@login_required
def edit_referral(request, pk, enable=""):
    enable = enable == ""
    row = get_object_or_404(Referral, pk=pk)
    form = ReferralForm(request.POST or None, instance=row)
    if form.is_valid():
        form.save()
        return redirect('referral')
    return render(request, 'edit_referrer.html', {'form': form, 'enable': enable})