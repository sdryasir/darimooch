from django.contrib import admin


from .models import Carousel

class CarouselAdmin(admin.ModelAdmin):
    list_display = ['caption', 'description', 'image']

admin.site.register(Carousel, CarouselAdmin)
# Register your models here.
