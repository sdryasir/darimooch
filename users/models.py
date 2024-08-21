from django.db import models
from django.contrib.auth.models import User

class Userdata(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    country = models.CharField(max_length=60)
    address = models.CharField(max_length=60)
    city = models.CharField(max_length=60)
    state = models.CharField(max_length=60)
    postal_code = models.CharField(max_length=60)
    phone = models.CharField(max_length=60)
    order_notes = models.CharField(max_length=60)
