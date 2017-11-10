from django.views.generic import ListView

from commodity_turnover.models import ReceiptContent
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

    def get_context_data(self, **kwargs):
        context = super(RemnantsOfGoodsView, self).get_context_data(**kwargs)
        receipts = dict((x.object_id, x) for x in ReceiptContent.objects.filter(content_type_id=10, price__gt=0))

        context['total_rolls'] = 0
        context['total_sum'] = 0
        context['total_footage'] = 0
        context['total_square'] = 0
        context['total_profit'] = 0
        for item in context['object_list']:
            context['total_rolls'] += item.count
            context['total_sum'] += item.count * item.retail_price
            context['total_footage'] += item.count * item.vendor_code.length
            context['total_square'] += item.count * item.vendor_code.length * item.vendor_code.width
            context['total_profit'] += item.count * (item.retail_price - receipts[item.pk].price) \
                if item.pk in receipts.keys() else item.count * 100
        context['total_footage'] = '{0:.1f}'.format(context['total_footage'] / 1000)
        context['total_square'] = '{0:.1f}'.format(context['total_square'] / 1000)

        return context
