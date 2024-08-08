from django.contrib import admin
from .models import Products

class ProductAdmin(admin.ModelAdmin):
    list_display = ['name', 'description', 'price', 'stock', 'weight', 'otherInfo', 'image','cat_id']

admin.site.register(Products, ProductAdmin)


# Register your models here.
