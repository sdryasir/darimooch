from django.db import models

class Category(models.Model):
    title = models.CharField(max_length=60)
    image = models.FileField(max_length=200, upload_to="category/", null=True)

    def __str__(self):
        return self.title



