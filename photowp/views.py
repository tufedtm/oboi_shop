from django.views.generic import ListView

from .models import PhotoWP


class Remnants(ListView):
    template_name = 'photowp/remnants_of_photo.html'
    queryset = PhotoWP.availables.all()

    def get_context_data(self, **kwargs):
        context = super(Remnants, self).get_context_data(**kwargs)
        context['categories'] = PhotoWP.availables.only('category').distinct('category')

        current_category = self.request.GET.get('category')

        result = []
        if current_category:
            result.append({
                'category': context['categories'][int(current_category) - 1].get_category_display(),
                'items': PhotoWP.availables.filter(category=current_category)
            })
        else:
            for category in context['categories']:
                result.append({
                    'category': category.get_category_display(),
                    'items': PhotoWP.availables.filter(category=category.category)
                })

        context['object_list'] = result

        return context
