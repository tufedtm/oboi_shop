from django.db import models


class GlueManager(models.Manager):
    def get_queryset(self):
        return super(GlueManager, self).get_queryset().select_related('brand').prefetch_related('glue_type')


class GlueAvailableManager(GlueManager):
    def get_queryset(self):
        return super(GlueAvailableManager, self).get_queryset().filter(count__gt=0)
