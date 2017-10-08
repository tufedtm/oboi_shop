from django.conf.urls import url, include
from django.contrib import admin

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^', include('main.urls')),
    url(r'^', include('photowp.urls', namespace='photowp')),
    url(r'^', include('glue.urls', namespace='glue')),
]
