from django.contrib import admin

from .models import (
    Brand,
    Contractor,
    PurchaseReturns,
    PurchaseReturnsContent,
    Receipt,
    ReceiptContent,
    Selling,
    SellingContent,
    TheConsignment,
    VendorCode
)


class BrandAdmin(admin.ModelAdmin):
    ordering = ('name', 'country_of_origin')


class VendorCodeAdmin(admin.ModelAdmin):
    list_display = (
        'vendor_code', 'brand', 'length', 'rapport', 'rapport_type',
        'basis_material', 'covering_material', 'moisture_resistance', 'resistance_to_light', 'gluing', 'removal'
    )
    list_filter = ('width',)
    ordering = ('width', 'vendor_code')


class TheConsignmentAdmin(admin.ModelAdmin):
    raw_id_fields = ('vendor_code',)
    list_display = ('vendor_code', 'the_consignment', 'retail_price', 'count', 'stillage', 'cell', 'showcase')
    list_filter = ('showcase', 'vendor_code__width')
    ordering = ('vendor_code__width', 'vendor_code__vendor_code', 'the_consignment')


class ReceiptInline(admin.TabularInline):
    model = ReceiptContent


class ReceiptAdmin(admin.ModelAdmin):
    actions = None
    inlines = (ReceiptInline,)


class SellingInline(admin.TabularInline):
    model = SellingContent


class SellingAdmin(admin.ModelAdmin):
    actions = None
    inlines = (SellingInline,)
    list_display = ('buyer', 'paid')


class PurchaseReturnsInline(admin.TabularInline):
    model = PurchaseReturnsContent


class PurchaseReturnsAdmin(admin.ModelAdmin):
    actions = None
    inlines = (PurchaseReturnsInline,)


admin.site.register(Brand, BrandAdmin)
admin.site.register(Contractor)
admin.site.register(VendorCode, VendorCodeAdmin)
admin.site.register(TheConsignment, TheConsignmentAdmin)
admin.site.register(Receipt, ReceiptAdmin)
admin.site.register(Selling, SellingAdmin)
admin.site.register(PurchaseReturns, PurchaseReturnsAdmin)
