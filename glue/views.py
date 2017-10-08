from django.views.generic.list import ListView

from .models import Glue


class RemnantsList(ListView):
    template_name = 'glue/remnants_of_glue.html'
    model = Glue
