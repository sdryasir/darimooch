from django.db import models
from categories.models import Category


class Products(models.Model):
    name = models.CharField(max_length=60)
    description = models.TextField(null=True)
    price = models.IntegerField(null=True)
    stock = models.IntegerField(null=True)
    weight = models.IntegerField(null=True)
    otherInfo = models.TextField(null=True)
    image = models.FileField(max_length=200, upload_to="products/", null=True)
    cat_id=models.ForeignKey(Category, on_delete=models.CASCADE,null=True)



# Create your models here.
