import datetime

from django.db.models import F, Sum, IntegerField
from django.views.generic.list import ListView

from .models import Selling, SellingContent


class SellingContentList(ListView):
    model = SellingContent

    def get_context_data(self, **kwargs):
        context = super(SellingContentList, self).get_context_data(**kwargs)
        pk = self.kwargs['pk']
        context['selling'] = Selling.objects.annotate(total_sum=Sum(
            F('sellingcontent__count') * F('sellingcontent__price'), output_field=IntegerField()
        )).get(pk=pk)

        context['object_list'] = SellingContent.objects.filter(selling_order_id=pk).annotate(
            item_sum=Sum(F('count') * F('price'), output_field=IntegerField())
        )

        return context


class SellingList(ListView):
    def get_queryset(self):
        return Selling.objects.annotate(total_sum=Sum(
            F('sellingcontent__count') * F('sellingcontent__price'), output_field=IntegerField()
        )) \
            .order_by('-date_create')


class SellingTodayList(ListView):
    template_name = 'index.html'

    def get_queryset(self):
        today_min = datetime.datetime.combine(datetime.date.today(), datetime.time.min)
        today_max = datetime.datetime.combine(datetime.date.today(), datetime.time.max)

        return SellingContent.objects.filter(selling_order__date_create__range=(today_min, today_max)).annotate(
            item_sum=Sum(F('count') * F('price'), output_field=IntegerField())
        )

    def get_context_data(self, **kwargs):
        context = super(SellingTodayList, self).get_context_data(**kwargs)

        context['total_sum'] = 0
        for item in self.get_queryset():
            context['total_sum'] += item.item_sum

        return context
