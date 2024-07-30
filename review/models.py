from django.db import models
from products.models import Products

class Review(models.Model):
    description = models.TextField()
    rating= models.IntegerField()
    product_id=models.ForeignKey(Products, on_delete=models.CASCADE,null=True)


