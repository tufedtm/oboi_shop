from django.contrib.contenttypes.fields import GenericRelation
from django.db import models

from commodity_turnover.models import ReceiptContent, SellingContent
from .managers import GlueManager, GlueAvailableManager


class Brand(models.Model):
    name = models.CharField('Бренд', max_length=100)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ('name',)
        verbose_name = 'Бренд'
        verbose_name_plural = 'Бренды'


class GlueType(models.Model):
    name = models.CharField('Тип клея', max_length=50)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ('name',)
        verbose_name = 'Тип клея'
        verbose_name_plural = 'Типы клея'


class Glue(models.Model):
    brand = models.ForeignKey(Brand, verbose_name='Бренд')
    warehouse_str = models.CharField('Наименование для склада', max_length=255, blank=True)
    weight = models.PositiveSmallIntegerField('Вес пачки', help_text='гр')
    retail_price = models.PositiveSmallIntegerField('Розничная цена')
    wholesale_price_pack = models.PositiveSmallIntegerField('Оптовая цена (кор)', null=True, blank=True)
    wholesale_price_item = models.PositiveSmallIntegerField('Оптовая цена (шт)', null=True, blank=True)
    count = models.PositiveSmallIntegerField('Количество')
    pack = models.PositiveSmallIntegerField('Пачек в коробке')
    area = models.PositiveSmallIntegerField('На площадь')
    glue_type = models.ManyToManyField(GlueType, verbose_name='Тип клея')

    receipt = GenericRelation(ReceiptContent)
    selling = GenericRelation(SellingContent)

    objects = GlueManager()
    availables = GlueAvailableManager()

    def __str__(self):
        return '{0}'.format(
            self.warehouse_str,
        )

    def get_for_selling(self):
        return self.__str__()

    def get_pack_count(self):
        if self.pack:
            count = int(self.count / self.pack)
            if count:
                return '({0})'.format(count)
            else:
                return ''
        else:
            return ''

    class Meta:
        ordering = ('warehouse_str',)
        verbose_name = 'Клей'
        verbose_name_plural = 'Клеи'
