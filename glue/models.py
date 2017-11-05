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
        return '{0} {1} {2}гр'.format(
            self.brand.name,
            ', '.join((obj.name for obj in self.glue_type.all())),
            self.weight
        )

    def get_for_selling(self):
        return self.__str__()

    def get_pack_count(self):
        if self.pack:
            count = int(divmod(self.count / self.pack, 1)[0])
            if count:
                return '({0})'.format(count)
            else:
                return ''
        else:
            return ''

    class Meta:
        ordering = ('brand__name', 'weight')
        verbose_name = 'Клей'
        verbose_name_plural = 'Клеи'
