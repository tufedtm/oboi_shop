from django.contrib import admin

from .models import Brand, TheConsignment, VendorCode


class TheConsignmentAdmin(admin.ModelAdmin):
    raw_id_fields = ('vendor_code',)
    list_display = ('vendor_code', 'the_consignment', 'count', 'stillage', 'cell', 'showcase')


admin.site.register(Brand)
admin.site.register(TheConsignment, TheConsignmentAdmin)
admin.site.register(VendorCode)
