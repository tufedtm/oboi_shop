from django.contrib import admin

from .forms import AdminReceiptForm, AdminSellingForm
from .models import Contractor, Receipt, ReceiptContent, Selling, SellingContent, PurchaseReturn, PurchaseReturnContent


class CommodityAdmin(admin.ModelAdmin):
    actions = None


class ReceiptInline(admin.TabularInline):
    form = AdminReceiptForm
    model = ReceiptContent


class ReceiptAdmin(CommodityAdmin):
    inlines = (ReceiptInline,)


class SellingInline(admin.TabularInline):
    form = AdminSellingForm
    model = SellingContent


class SellingAdmin(CommodityAdmin):
    inlines = (SellingInline,)


class PurchaseReturnInline(admin.TabularInline):
    model = PurchaseReturnContent


class PurchaseReturnAdmin(CommodityAdmin):
    inlines = (PurchaseReturnInline,)


admin.site.register(Contractor)
admin.site.register(Receipt, ReceiptAdmin)
admin.site.register(Selling, SellingAdmin)
admin.site.register(PurchaseReturn, PurchaseReturnAdmin)
