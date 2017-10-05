from django.conf.urls import url

from .views import Remnants

urlpatterns = [
    url(r'^remnants_of_photo', Remnants.as_view(), name='remnants_of_photo'),
]
