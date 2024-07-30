from django.contrib import admin
from .models import Review

class ReviewAdmin(admin.ModelAdmin):
    list_display = ['description', 'rating', 'product_id']

admin.site.register(Review, ReviewAdmin)
