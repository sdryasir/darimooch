from django.db import models


class Products(models.Model):
    title = models.CharField(max_length=60)
    description = models.TextField()
    price = models.IntegerField()
    category = models.CharField(max_length=60)
    image = models.FileField(max_length=200, upload_to="products/", null=True)


# Create your models here.
