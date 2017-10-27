from django.views.generic import ListView

from .models import TheConsignment


class RemnantsOfGoodsView(ListView):
    template_name = 'main/remnants_of_goods.html'

    def get_queryset(self):
        if self.request.GET.getlist('width'):
            return TheConsignment.availables \
                .filter(vendor_code__width__in=self.request.GET.getlist('width')) \
                .order_by('vendor_code__vendor_code', 'the_consignment')

        return TheConsignment.availables \
            .order_by('vendor_code__width', 'vendor_code__vendor_code', 'the_consignment')
