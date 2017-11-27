from collections import OrderedDict

from django.contrib.admin.utils import get_fields_from_path
from django.contrib.contenttypes.fields import ContentType
from django.db.models import F, DateTimeField, IntegerField, Count, Min, Max, Sum
from django.shortcuts import render
from django.utils import formats, timezone
from django.utils.http import urlencode
from django.views.generic.list import ListView

from glue.models import Glue
from main.models import TheConsignment
from photowp.models import PhotoWP
from .models import ReceiptContent, Selling, SellingContent


class SellingContentList(ListView):
    model = SellingContent

    def get_context_data(self, **kwargs):
        context = super(SellingContentList, self).get_context_data(**kwargs)

        context['selling'] = Selling.objects.get(pk=self.kwargs['pk'])
        context['object_list'] = SellingContent.objects.filter(selling_order_id=self.kwargs['pk'])

        return context


class SellingList(ListView):
    def get_queryset(self):
        return Selling.objects.order_by('-date_create')


class SellingTodayList(ListView):
    template_name = 'index.html'

    def get_queryset(self):
        today = timezone.now()

        return SellingContent.objects.filter(
            selling_order__date_create__year=today.year,
            selling_order__date_create__month=today.month,
            selling_order__date_create__day=today.day,
        )

    def get_context_data(self, **kwargs):
        context = super(SellingTodayList, self).get_context_data(**kwargs)

        context['total_sum'] = 0
        context['wp_count'] = 0
        for item in context['object_list']:
            context['total_sum'] += item.get_sum()
            if item.content_type_id == 10:
                context['wp_count'] += item.count

        return context


def date_hierarchy(request):
    context = {}
    queryset = Selling.objects.all()
    params = dict(request.GET.items())
    field_name = 'date_create'
    field = get_fields_from_path(Selling, field_name)[-1]
    dates_or_datetimes = 'datetimes' if isinstance(field, DateTimeField) else 'dates'
    year_field = '%s__year' % field_name
    month_field = '%s__month' % field_name
    year_lookup = params.get(year_field)
    month_lookup = params.get(month_field)
    glue, wp, photowp = ContentType.objects.filter(model__in=('glue', 'theconsignment', 'photowp'))

    if year_lookup and month_lookup:
        sellings = SellingContent.objects.filter(
            selling_order__date_create__year=year_lookup,
            selling_order__date_create__month=month_lookup
        ).select_related('selling_order__buyer')
        receipts = ReceiptContent.objects.filter(
            receipt__date__lte=timezone.datetime(int(year_lookup), int(month_lookup) + 1, 1),
            price__gt=0
        ).select_related('content_type')

        glue_sells = sellings.filter(content_type_id=glue.pk)
        wp_sells = sellings.filter(content_type_id=wp.pk)
        photowp_sells = sellings.filter(content_type_id=photowp.pk)

        glue_sells_ids = glue_sells.values_list('object_id')
        wp_sells_ids = wp_sells.values_list('object_id')
        photowp_sells_ids = photowp_sells.values_list('object_id')

        glue_recs = receipts.filter(content_type_id=glue.pk, object_id__in=glue_sells_ids)
        photowp_recs = receipts.filter(content_type_id=photowp.pk, object_id__in=photowp_sells_ids)
        wp_recs = receipts.filter(content_type_id=wp.pk, object_id__in=wp_sells_ids)

        ###
        # calculate total for glues
        ###

        context['glues'] = OrderedDict((o.pk, o) for o in Glue.objects.filter(pk__in=glue_sells_ids))
        for item in \
            glue_sells.filter(wholesale=False, pack=False) \
                .values('object_id') \
                .annotate(number_of_sales=Count('id')) \
                .annotate(count_of_sales=Sum('count')) \
                .annotate(sum=Sum(F('count') * F('price'), output_field=IntegerField())) \
                .order_by('object_id'):
            glue = context['glues'][item['object_id']]
            glue.number_of_sales = item['number_of_sales']
            glue.count_of_sales = item['count_of_sales']
            glue.sum = item['sum']

        for item in glue_recs:
            try:
                glue = context['glues'][item.object_id]
                glue.profit = glue.sum - item.price * glue.count_of_sales
            except AttributeError:
                pass

        for item in \
            glue_sells.filter(wholesale=True, pack=True) \
                .values('object_id') \
                .annotate(count_of_sales=Sum('count')) \
                .annotate(sum=Sum(F('count') * F('price'), output_field=IntegerField())) \
                .order_by('object_id'):
            glue = context['glues'][item['object_id']]
            glue.count_of_sales_w = item['count_of_sales']
            glue.sum_w = item['sum']

        for item in glue_recs:
            try:
                glue = context['glues'][item.object_id]
                glue.profit_w = glue.sum_w - item.price * glue.count_of_sales_w * glue.pack
            except AttributeError:
                pass

        context['glues'] = [v for v in context['glues'].values()]

        context['glues_total_sum'] = 0
        context['glues_total_profit'] = 0
        context['glues_total_count_of_sales'] = 0
        context['glues_total_number_of_sales'] = 0
        for i in context['glues']:
            try:
                context['glues_total_sum'] += i.sum
                context['glues_total_profit'] += i.profit
                context['glues_total_count_of_sales'] += i.count_of_sales
                context['glues_total_number_of_sales'] += i.number_of_sales
            except AttributeError:
                pass

        context['glues_total_sum_w'] = 0
        context['glues_total_profit_w'] = 0
        context['glues_total_count_of_sales_w'] = 0
        for i in context['glues']:
            try:
                context['glues_total_sum_w'] += i.sum_w
                context['glues_total_profit_w'] += i.profit_w
                context['glues_total_count_of_sales_w'] += i.count_of_sales_w
            except AttributeError:
                pass

        ###
        # calculate total for photomurals
        ###

        context['photowps'] = OrderedDict(
            (o.pk, o) for o in PhotoWP.objects.filter(pk__in=photowp_sells_ids).order_by('category', 'name'))
        for item in \
            photowp_sells.filter(wholesale=False, pack=False) \
                .values('object_id') \
                .annotate(count_of_sales=Sum('count')) \
                .annotate(sum=Sum(F('count') * F('price'), output_field=IntegerField())) \
                .order_by('object_id'):
            photowp = context['photowps'][item['object_id']]
            photowp.count_of_sales = item['count_of_sales']
            photowp.sum = item['sum']

        for item in photowp_recs:
            try:
                photowp = context['photowps'][item.object_id]
                photowp.profit = photowp.sum - item.price * photowp.count_of_sales
            except AttributeError:
                pass

        for item in \
            photowp_sells.filter(wholesale=True, pack=False) \
                .values('object_id') \
                .annotate(count_of_sales=Sum('count')) \
                .annotate(sum=Sum(F('count') * F('price'), output_field=IntegerField())) \
                .order_by('object_id'):
            photowp = context['photowps'][item['object_id']]
            photowp.count_of_sales_w = item['count_of_sales']
            photowp.sum_w = item['sum']

        for item in photowp_recs:
            try:
                photowp = context['photowps'][item.object_id]
                photowp.profit_w = photowp.sum_w - item.price * photowp.count_of_sales_w
            except AttributeError:
                pass

        context['photowps'] = [v for v in context['photowps'].values()]

        context['photowps_total_sum'] = 0
        context['photowps_total_profit'] = 0
        context['photowps_total_count_of_sales'] = 0
        for i in context['photowps']:
            try:
                context['photowps_total_sum'] += i.sum
                context['photowps_total_profit'] += i.profit
                context['photowps_total_count_of_sales'] += i.count_of_sales
            except AttributeError:
                pass

        context['photowps_total_sum_w'] = 0
        context['photowps_total_profit_w'] = 0
        context['photowps_total_count_of_sales_w'] = 0
        for i in context['photowps']:
            try:
                context['photowps_total_sum_w'] += i.sum_w
                context['photowps_total_profit_w'] += i.profit_w
                context['photowps_total_count_of_sales_w'] += i.count_of_sales_w
            except AttributeError:
                pass

        ###
        # calculate total for wallpapers
        ###

        context['wps'] = OrderedDict(
            (o.pk, o) for o in TheConsignment.objects.filter(pk__in=wp_sells_ids).order_by('vendor_code__vendor_code')
        )

        for item in \
            wp_sells.values('object_id') \
                .annotate(number_of_sales=Count('id')) \
                .annotate(count_of_sales=Sum('count')) \
                .annotate(sum=Sum(F('count') * F('price'), output_field=IntegerField())) \
                .order_by('object_id'):
            wp = context['wps'][item['object_id']]
            wp.number_of_sales = item['number_of_sales']
            wp.count_of_sales = item['count_of_sales']
            wp.sum = item['sum']
            wp.profit = item['count_of_sales'] * 100

        for item in wp_recs:
            wp = context['wps'][item.object_id]
            wp.profit = wp.sum - item.price * wp.count_of_sales

        context['wps'] = [v for v in context['wps'].values()]

        context['wps_total_sum'] = 0
        context['wps_total_count_of_sales'] = 0
        context['wps_total_number_of_sales'] = 0
        for i in context['wps']:
            try:
                context['wps_total_sum'] += i.sum
                context['wps_total_count_of_sales'] += i.count_of_sales
                context['wps_total_number_of_sales'] += i.number_of_sales
            except AttributeError:
                pass

        context['wps_total_profit'] = 0
        for i in context['wps']:
            try:
                context['wps_total_profit'] += i.profit
            except AttributeError:
                pass

        ###
        # calculate total for all
        ###

        context['byers'] = queryset.filter(
            date_create__year=year_lookup,
            date_create__month=month_lookup
        ).count()
        context['total_sum'] = sum((
            context['glues_total_sum'],
            context['glues_total_sum_w'],
            context['photowps_total_sum'],
            context['photowps_total_sum_w'],
            context['wps_total_sum'],
        ))
        context['profit_sum'] = sum((
            context['glues_total_profit'],
            context['glues_total_profit_w'],
            context['photowps_total_profit'],
            context['photowps_total_profit_w'],
            context['wps_total_profit'],
        ))

    def link(filters):
        for k, v in filters.items():
            if v is None:
                if k in params:
                    del params[k]
            else:
                params[k] = v

        return '?{0}'.format(urlencode(sorted(params.items())))

    if not year_lookup:
        date_range = queryset.aggregate(first=Min(field_name), last=Max(field_name))
        if date_range['first'] and date_range['last']:
            if date_range['first'].year == date_range['last'].year:
                year_lookup = date_range['first'].year

    if year_lookup:
        months = queryset.filter(**{year_field: year_lookup})
        months = getattr(months, dates_or_datetimes)(field_name, 'month')

        context['choices'] = [{
            'link': link({year_field: year_lookup, month_field: month.month}),
            'title': formats.date_format(month, 'YEAR_MONTH_FORMAT')
        } for month in months]
    else:
        years = getattr(queryset, dates_or_datetimes)(field_name, 'year')

        context['choices'] = [{
            'link': link({year_field: str(year.year)}),
            'title': str(year.year),
        } for year in years]

    return render(request, 'commodity_turnover/report.html', context)
