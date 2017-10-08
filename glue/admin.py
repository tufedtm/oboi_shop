from django.contrib import admin

from .models import Brand, Glue, GlueType


class BrandAdmin(admin.ModelAdmin):
    list_display = ('name',)
    list_editable = ('name',)
    list_display_links = None


class GlueTypeAdmin(admin.ModelAdmin):
    list_display = ('name',)
    list_editable = ('name',)
    list_display_links = None


admin.site.register(Brand, BrandAdmin)
admin.site.register(Glue)
admin.site.register(GlueType, GlueTypeAdmin)
