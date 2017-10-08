from django.conf.urls import url

from .views import RemnantsList

urlpatterns = [
    url(r'^remnants_of_glue', RemnantsList.as_view(), name='remnants_of_glue'),
]
