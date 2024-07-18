from django.contrib import admin
from .models import Products

class ProductAdmin(admin.ModelAdmin):
    list_display = ['title', 'description', 'price', 'category', 'image']

admin.site.register(Products, ProductAdmin)


# Register your models here.
