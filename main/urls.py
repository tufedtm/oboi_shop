from django.conf.urls import url
from django.views.generic import ListView
from .models import TheConsignment

urlpatterns = [
    url(r'^$', ListView.as_view(model=TheConsignment, template_name='index.html',
                                queryset=TheConsignment.objects.order_by('vendor_code__vendor_code', 'the_consignment'))),
]
