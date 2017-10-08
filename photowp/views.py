from django.views.generic import ListView

from .models import PhotoWP


class Remnants(ListView):
    template_name = 'photowp/remnants_of_photo.html'
    queryset = PhotoWP.objects.order_by('category', 'sheet', 'name')
