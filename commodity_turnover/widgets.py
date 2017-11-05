from django import forms
from django.contrib.admin.sites import site
from django.contrib.contenttypes.models import ContentType
from django.utils.safestring import mark_safe


class ContentTypeSelect(forms.Select):
    def __init__(self, model=None):
        super(ContentTypeSelect, self).__init__()
        self.ctypes = ContentType.objects.filter(
            model__in=model.content_type.field.get_limit_choices_to()['model__in']
        )

    def render(self, name, value, attrs=None, renderer=None):
        output = super(ContentTypeSelect, self).render(name, value, attrs, renderer)
        attrs['var_id'] = attrs['id'].replace('-', '_')

        choiceoutput = ' var %s_choice_urls = {' % attrs['var_id']
        for ctype in self.ctypes:
            try:
                choiceoutput += "'{0}' : '/{1}/{2}/{3}?_to_field={4}',".format(
                    ctype.pk,
                    site.name,
                    ctype.app_label,
                    ctype.model,
                    ctype.model_class()._meta.pk.name
                )
            except:
                pass
        choiceoutput += '};'

        output += (
            "<script>"
            "(function($) {"
            "  $(document).ready(function(){"
            "    %(choiceoutput)s"
            "    $('#%(id)s').change(function(){"
            "      $('#%(fk_id)s').attr('href',%(var_id)s_choice_urls[$(this).val()]);"
            "      $('#%(raw_fk)s').val('');"
            "      $('#%(raw_fk)s').siblings('strong').text('');"
            "    });"
            "  });"
            "})(django.jQuery);"
            "</script>" % {
                'choiceoutput': choiceoutput,
                'id': attrs['id'],
                'var_id': attrs['var_id'],
                'fk_id': 'lookup_{0}object_id'.format(attrs['id'].replace('content_type', '')),
                'raw_fk': '{0}object_id'.format(attrs['id'].replace('content_type', ''))
            }
        )

        return mark_safe(''.join(output))
