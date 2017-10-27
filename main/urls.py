from django.conf.urls import url

from .views import RemnantsOfGoodsView

urlpatterns = [
    url(r'^remnants_of_goods$', RemnantsOfGoodsView.as_view(), name='remnants_of_goods'),
]
