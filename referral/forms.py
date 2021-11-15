from django import forms
from .models import Person
from .models import Referrer
from .models import Referral


class DateInput(forms.DateInput):
    input_type = 'date'


class PersonForm(forms.ModelForm):
    class Meta:
        model = Person
        fields = "__all__"
        widgets = {
            'data_of_birth': forms.DateInput(
                format='%Y-%m-%d',
                attrs={
                    'class': 'form-control',
                    'placeholder': 'Select a date',
                    'type': 'date'
                }
            ),
        }


class OrgFormReferrer(forms.ModelForm):
    class Meta:
        model = Referrer
        fields = ["id", "type", "name"]


class IndReferrerForm(forms.ModelForm):
    class Meta:
        model = Referrer
        fields = ["id", "type", "name", "last_name"]


class ReferrerForm(forms.ModelForm):
    class Meta:
        model = Referrer
        fields = "__all__"


class ReferralForm(forms.ModelForm):
    class Meta:
        model = Referral
        fields = "__all__"

        widgets = {
            'date': forms.DateInput(
                format='%Y-%m-%d',
                attrs={
                    'class': 'form-control',
                    'placeholder': 'Select a date',
                    'type': 'date'
                }
            ),
        }
