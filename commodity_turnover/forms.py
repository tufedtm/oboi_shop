from django import forms
from django.contrib import admin
from django.contrib.admin.widgets import ForeignKeyRawIdWidget
from django.contrib.contenttypes.models import ContentType
from django.core.exceptions import ObjectDoesNotExist
from django.db.models.fields.related import ManyToOneRel

from .models import ReceiptContent, SellingContent
from .widgets import ContentTypeSelect


class AdminCommodityForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        super(AdminCommodityForm, self).__init__(*args, **kwargs)
        try:
            model = self.instance.content_type.model_class()
            model_key = model._meta.pk.name
        except (AttributeError, ObjectDoesNotExist):
            model = ContentType.objects.filter(
                model__in=self._meta.model.content_type.field.get_limit_choices_to()['model__in']
            )[0].model_class()
            model_key = 'id'
        self.fields['object_id'].widget = ForeignKeyRawIdWidget(
            ManyToOneRel(None, model, model_key),
            admin.site
        )


class AdminReceiptForm(AdminCommodityForm):
    class Meta:
        model = ReceiptContent
        fields = '__all__'
        widgets = {
            'content_type': ContentTypeSelect(model)
        }


class AdminSellingForm(AdminCommodityForm):
    class Meta:
        model = SellingContent
        fields = '__all__'
        widgets = {
            'content_type': ContentTypeSelect(model)
        }
