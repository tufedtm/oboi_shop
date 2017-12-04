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
    class SellingBuyerListFilter(admin.SimpleListFilter):
        title = Contractor._meta.verbose_name
        parameter_name = 'buyer__id__exact'

        def lookups(self, request, model_admin):
            return ((c.id, c.__str__()) for c in Contractor.objects.filter(contractor_type=False))

        def queryset(self, request, queryset):
            if self.value():
                return queryset.filter(buyer__id__exact=self.value())

    date_hierarchy = 'date_create'
    fields = ('buyer', ('date_create', 'date_paid'), 'comment')
    list_display = ('__str__', 'date_paid')
    inlines = (SellingInline,)
    list_filter = (SellingBuyerListFilter,)

    def render_change_form(self, request, context, *args, **kwargs):
        context['adminform'].form.fields['buyer'].queryset = Contractor.objects.filter(contractor_type=False)
        return super(SellingAdmin, self).render_change_form(request, context, args, kwargs)


class PurchaseReturnInline(admin.TabularInline):
    model = PurchaseReturnContent


@admin.register(PurchaseReturn)
class PurchaseReturnAdmin(CommodityAdmin):
    inlines = (PurchaseReturnInline,)


admin.site.register(Contractor)
