from django.views.generic import ListView

from .models import TheConsignment
from glue.models import Glue
from photowp.models import PhotoWP
from commodity_turnover.models import Receipt, ReceiptContent, Contractor
from django.contrib.contenttypes.models import ContentType

class RemnantsOfGoodsView(ListView):
    template_name = 'main/remnants_of_goods.html'
    queryset = TheConsignment.objects.order_by('vendor_code__width', 'vendor_code__vendor_code', 'the_consignment')

    # def get(self, request, *args, **kwargs):
    #     TC_ctype_id = 10
    #     G_ctype_id = 8
    #     PWP_ctype_id = 13
    #     rc = []
    #     for item in PhotoWP.objects.all():
    #         rc.append(ReceiptContent(receipt_id=1, content_type_id=13, object_id=item.pk, count=item.count, price=0))
    #     print(rc)
    #     ReceiptContent.objects.bulk_create(rc)
    #
    #     return super(RemnantsOfGoodsView, self).get(request, *args, **kwargs)

    def get_queryset(self):
        if self.request.GET.getlist('width'):
            return TheConsignment.objects \
                .filter(vendor_code__width__in=self.request.GET.getlist('width')) \
                .order_by('vendor_code__vendor_code', 'the_consignment')

        return TheConsignment.objects.order_by('vendor_code__width', 'vendor_code__vendor_code', 'the_consignment')
