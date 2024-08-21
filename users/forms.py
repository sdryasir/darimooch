from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django import forms
from .models import Userdata

class CustomUserForm(UserCreationForm):
     
     country = forms.CharField(max_length=60, required=False)
     address = forms.CharField(max_length=60, required=False)
     city = forms.CharField(max_length=60, required=False)
     state = forms.CharField(max_length=60, required=False)
     postal_code = forms.CharField(max_length=60, required=False)
     phone = forms.CharField(max_length=60, required=False)
     order_notes = forms.CharField(max_length=60, required=False)

     class Meta:
         model = User
         fields = ["username", "first_name", "last_name", "password1", "password2", "email", "country", "address", "city", "state", "postal_code", "phone", "order_notes"]


     def save(self):
        user = super().save()
        Userdata.objects.create(
            user=user, 
            country=self.cleaned_data.get('country'),
            address=self.cleaned_data.get('address'),
            city=self.cleaned_data.get('city'),
            state=self.cleaned_data.get('state'),
            postal_code=self.cleaned_data.get('postal_code'),
            phone=self.cleaned_data.get('phone'),
            order_notes=self.cleaned_data.get('order_notes')
            )
        return user
     
     