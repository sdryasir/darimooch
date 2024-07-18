from django.db import models


class Carousel(models.Model):
    caption = models.CharField(max_length=60)
    description = models.TextField()
    image = models.FileField(max_length=200, upload_to="carousel/", null=True)


# Create your models here.
