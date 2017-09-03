from django.conf.urls import url
from django.views.generic import TemplateView

from .views import RemnantsOfGoodsView

urlpatterns = [
    url(r'^$', TemplateView.as_view(template_name='index.html'), name='index'),
    url(r'^remnants_of_goods$', RemnantsOfGoodsView.as_view(), name='remnants_of_goods'),
]
