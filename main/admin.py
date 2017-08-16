from django.contrib import admin

from .models import TheConsignment, VendorCode


class TheConsignmentAdmin(admin.ModelAdmin):
    raw_id_fields = ('vendor_code',)
    list_display = ('vendor_code', 'the_consignment', 'count', 'stillage', 'cell')


admin.site.register(TheConsignment, TheConsignmentAdmin)
admin.site.register(VendorCode)
