from django.db import models


class ReceiptManager(models.Manager):
    def get_queryset(self):
        return super(ReceiptManager, self).get_queryset().select_related('shipper')


class ReceiptContentManager(models.Manager):
    def get_queryset(self):
        return super(ReceiptContentManager, self).get_queryset().prefetch_related('content_object')


class SellingManager(models.Manager):
    def get_queryset(self):
        return super(SellingManager, self).get_queryset() \
            .select_related('buyer').prefetch_related('sellingcontent_set')


class SellingContentManager(models.Manager):
    def get_queryset(self):
        return super(SellingContentManager, self).get_queryset() \
            .select_related('selling_order__buyer', 'content_type')


class PurchaseReturnManager(models.Manager):
    def get_queryset(self):
        return super(PurchaseReturnManager, self).get_queryset() \
            .select_related('selling')


class PurchaseReturnContentManager(models.Manager):
    def get_queryset(self):
        return super(PurchaseReturnContentManager, self).get_queryset() \
            .select_related('purchase_returns', 'selling_content')
