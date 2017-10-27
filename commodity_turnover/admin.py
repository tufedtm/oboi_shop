from django.contrib import admin

from .forms import AdminReceiptForm, AdminSellingForm
from .models import Contractor, Receipt, ReceiptContent, Selling, SellingContent, PurchaseReturn, PurchaseReturnContent


class CommodityAdmin(admin.ModelAdmin):
    actions = None


class ReceiptInline(admin.TabularInline):
    form = AdminReceiptForm
    model = ReceiptContent


@admin.register(Receipt)
class ReceiptAdmin(CommodityAdmin):
    inlines = (ReceiptInline,)


class SellingInline(admin.TabularInline):
    extra = 4
    fields = ('content_type', 'object_id', 'count', 'price', 'wholesale', 'pack', 'complement')
    form = AdminSellingForm
    model = SellingContent


@admin.register(Selling)
class SellingAdmin(CommodityAdmin):
    date_hierarchy = 'date_create'
    fieldsets = (
        (None, {
            'fields': ('buyer', ('date_create', 'date_paid'), 'comment'),
        }),
    )
    inlines = (SellingInline,)


class PurchaseReturnInline(admin.TabularInline):
    model = PurchaseReturnContent


@admin.register(PurchaseReturn)
class PurchaseReturnAdmin(CommodityAdmin):
    inlines = (PurchaseReturnInline,)


admin.site.register(Contractor)
