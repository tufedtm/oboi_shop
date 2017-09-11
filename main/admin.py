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
    list_display = ('vendor_code', 'width', 'retail_price', 'brand', 'rapport', 'rapport_type')
    list_filter = ('width',)
    list_editable = ('retail_price', 'brand', 'rapport', 'rapport_type')
    ordering = ('width', 'vendor_code')


class TheConsignmentAdmin(admin.ModelAdmin):
    raw_id_fields = ('vendor_code',)
    list_display = ('vendor_code', 'the_consignment', 'count', 'stillage', 'cell', 'showcase')
    # list_editable = ('count', 'stillage', 'cell', 'showcase')
    list_filter = ('showcase', 'vendor_code__width')
    ordering = ('vendor_code__width', 'vendor_code__vendor_code', 'the_consignment')


class SellingInline(admin.TabularInline):
    model = SellingContent


class SellingAdmin(admin.ModelAdmin):
    actions = None
    inlines = (SellingInline,)
    list_display = ('buyer', 'paid')


class ReceiptInline(admin.TabularInline):
    model = ReceiptContent


class ReceiptAdmin(admin.ModelAdmin):
    actions = None
    inlines = (ReceiptInline,)


class PurchaseReturnsInline(admin.TabularInline):
    model = PurchaseReturnsContent


class PurchaseReturnsAdmin(admin.ModelAdmin):
    actions = None
    inlines = (PurchaseReturnsInline,)


admin.site.register(Brand, BrandAdmin)
admin.site.register(TheConsignment, TheConsignmentAdmin)
admin.site.register(VendorCode, VendorCodeAdmin)
admin.site.register(Contractor)
admin.site.register(PurchaseReturns, PurchaseReturnsAdmin)
admin.site.register(Selling, SellingAdmin)
admin.site.register(Receipt, ReceiptAdmin)
