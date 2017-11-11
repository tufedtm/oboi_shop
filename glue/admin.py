from django.contrib import admin

from .models import Brand, Glue, GlueType


@admin.register(Brand)
class BrandAdmin(admin.ModelAdmin):
    list_display = ('name',)
    list_editable = ('name',)
    list_display_links = None


@admin.register(Glue)
class GlueAdmin(admin.ModelAdmin):
    list_display = ('__str__', 'count', 'retail_price', 'wholesale_price_pack')


@admin.register(GlueType)
class GlueTypeAdmin(admin.ModelAdmin):
    list_display = ('name',)
    list_editable = ('name',)
    list_display_links = None
