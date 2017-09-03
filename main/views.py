from django.views.generic import ListView

from .models import TheConsignment, Receipt, ReceiptContent


class RemnantsOfGoodsView(ListView):
    template_name = 'remnants_of_goods.html'
    queryset = TheConsignment.objects.order_by('vendor_code__width', 'vendor_code__vendor_code', 'the_consignment')

    def get_queryset(self):
        if self.request.GET.get('width'):
            return TheConsignment.objects \
                .filter(vendor_code__width=self.request.GET.get('width')) \
                .order_by('vendor_code__width', 'vendor_code__vendor_code', 'the_consignment')
        return TheConsignment.objects \
            .order_by('vendor_code__width', 'vendor_code__vendor_code', 'the_consignment')

    # def get(self, request, *args, **kwargs):
    #     receipt = Receipt.objects.first()
    #     for the_c in TheConsignment.objects.all():
    #         print(receipt.pk)
    #         print(the_c.pk)
    #         print(the_c.count)
    #         print()
    #         ReceiptContent.objects.create(receipt=receipt, the_consignment=the_c, count=the_c.count, price=0)
    #     return super(RemnantsOfGoodsView, self).get(request, *args, **kwargs)
