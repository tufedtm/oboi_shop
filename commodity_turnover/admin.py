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

    def render_change_form(self, request, context, *args, **kwargs):
        context['adminform'].form.fields['shipper'].queryset = Contractor.objects.filter(contractor_type=True)
        return super(ReceiptAdmin, self).render_change_form(request, context, args, kwargs)


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

    def render_change_form(self, request, context, *args, **kwargs):
        context['adminform'].form.fields['buyer'].queryset = Contractor.objects.filter(contractor_type=False)
        return super(SellingAdmin, self).render_change_form(request, context, args, kwargs)


class PurchaseReturnInline(admin.TabularInline):
    model = PurchaseReturnContent


@admin.register(PurchaseReturn)
class PurchaseReturnAdmin(CommodityAdmin):
    inlines = (PurchaseReturnInline,)


admin.site.register(Contractor)
