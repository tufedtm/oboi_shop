from django.views.generic import ListView

from .models import TheConsignment


class RemnantsOfGoodsView(ListView):
    template_name = 'remnants_of_goods.html'
    queryset = TheConsignment.objects.order_by('vendor_code__width', 'vendor_code__vendor_code', 'the_consignment')

    def get_queryset(self):
        if self.request.GET.getlist('width'):
            return TheConsignment.objects \
                .filter(vendor_code__width__in=self.request.GET.getlist('width')) \
                .order_by('vendor_code__vendor_code', 'the_consignment')
        return TheConsignment.objects \
            .order_by('vendor_code__width', 'vendor_code__vendor_code', 'the_consignment')
