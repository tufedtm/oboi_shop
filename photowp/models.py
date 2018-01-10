from django.db import models

from utils.managers import AvailableManager


class PhotoWP(models.Model):
    CATEGORIES = (
        (1, 'Тула (эконом)'),
        (2, 'Тула (VIP)'),
        (3, 'Басс (люкс)'),
        (4, 'Басс (премиум)'),
        (5, 'Тула (фотопанно)'),
    )

    category = models.PositiveSmallIntegerField('Категория', choices=CATEGORIES)
    name = models.CharField('Наименование', max_length=100)
    vendor_code = models.CharField('Артикул', max_length=10, blank=True)
    sheet = models.PositiveSmallIntegerField('Листов')
    width = models.PositiveSmallIntegerField('Ширина')
    height = models.PositiveSmallIntegerField('Высота')
    count = models.PositiveSmallIntegerField('Количество')
    retail_price = models.PositiveIntegerField('Розничная цена')
    wholesale_price_pack = models.PositiveSmallIntegerField('Оптовая цена (кор)', null=True, blank=True)
    wholesale_price_item = models.PositiveSmallIntegerField('Оптовая цена (шт)', null=True, blank=True)

    objects = models.Manager()
    availables = AvailableManager()

    def __str__(self):
        return '{0} {1}л {2}x{3}'.format(self.name, self.sheet, self.width, self.height)

    def get_for_selling(self):
        return '{0} [{1}]'.format(self.__str__(), self.get_category_display())

    def get_name(self):
        if self.vendor_code:
            return '{0} ({1})'.format(self.name, self.vendor_code)
        else:
            return '{0}'.format(self.name)

    class Meta:
        ordering = ('category', 'name')
        verbose_name = 'Фотообои'
        verbose_name_plural = 'Фотообои'
