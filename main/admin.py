from django.contrib import admin
from django.contrib.auth.models import Group, User

from .models import Brand, TheConsignment, VendorCode


@admin.register(VendorCode)
class VendorCodeAdmin(admin.ModelAdmin):
    list_display = (
        'vendor_code', 'brand', 'length', 'rapport', 'rapport_type',
        'basis_material', 'covering_material', 'moisture_resistance', 'resistance_to_light', 'gluing', 'removal'
    )
    list_filter = ('width',)
    ordering = ('width', 'vendor_code')


@admin.register(TheConsignment)
class TheConsignmentAdmin(admin.ModelAdmin):
    list_per_page = 1000
    raw_id_fields = ('vendor_code',)
    list_display = ('vendor_code', 'the_consignment', 'retail_price', 'count', 'stillage', 'cell', 'showcase')
    list_filter = ('showcase', 'vendor_code__width')
    ordering = ('vendor_code__width', 'vendor_code__vendor_code', 'the_consignment')


admin.site.unregister(User)
admin.site.unregister(Group)
admin.site.register(Brand)
