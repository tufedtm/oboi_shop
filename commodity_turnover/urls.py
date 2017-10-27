from django.conf.urls import url

from .views import SellingContentList, SellingList, SellingTodayList

urlpatterns = [
    url(r'^$', SellingTodayList.as_view(), name='selling_today_list'),
    url(r'^selling/$', SellingList.as_view(), name='selling_list'),
    url(r'^selling/(?P<pk>\d+)$', SellingContentList.as_view(), name='sellingcontent_list'),
]
