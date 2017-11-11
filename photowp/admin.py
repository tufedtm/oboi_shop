from django.contrib import admin

from .models import PhotoWP


@admin.register(PhotoWP)
class PhotoWPAdmin(admin.ModelAdmin):
    list_per_page = 1000
    list_display = ('__str__', 'category', 'count', 'retail_price', 'wholesale_price_item')
