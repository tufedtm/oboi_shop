from django.db import models


class VendorCodeManager(models.Manager):
    def get_queryset(self):
        return super(VendorCodeManager, self).get_queryset() \
            .select_related('brand')


class TheConsignmentManager(models.Manager):
    def get_queryset(self):
        return super(TheConsignmentManager, self).get_queryset() \
            .select_related('vendor_code').prefetch_related('vendor_code__combination')


class TheConsignmentAvailableManager(TheConsignmentManager):
    def get_queryset(self):
        return super(TheConsignmentAvailableManager, self).get_queryset() \
            .filter(count__gt=0)
