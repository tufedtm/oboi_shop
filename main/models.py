from django.db import models


class Brand(models.Model):
    name = models.CharField('Бренд', max_length=100, unique=True)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Бренд'
        verbose_name_plural = 'Бренды'


class VendorCode(models.Model):
    brand = models.ForeignKey(Brand, null=True, blank=True)
    vendor_code = models.CharField('Артикул', max_length=20, unique=True)
    width = models.FloatField('Ширина (м)', default=1.06)
    length = models.FloatField('Длина (м)', default=10)

    def __str__(self):
        return self.vendor_code

    class Meta:
        verbose_name = 'Артикул'
        verbose_name_plural = 'Артикулы'


class TheConsignment(models.Model):
    STILLAGES = ((x, x) for x in range(1, 11))
    CELLS = ((x, x) for x in range(1, 21))

    vendor_code = models.ForeignKey(VendorCode, verbose_name='Артикул')
    the_consignment = models.CharField('Партия', max_length=20, null=True, blank=True)
    count = models.PositiveSmallIntegerField('Количество рулонов')
    stillage = models.PositiveSmallIntegerField('Стеллаж', choices=STILLAGES, null=True, blank=True)
    cell = models.PositiveSmallIntegerField('Ячейка', choices=CELLS, null=True, blank=True)
    showcase = models.BooleanField('На витрине?', default=True)

    def __str__(self):
        if self.stillage:
            return '{0} ({1}) — {2} ({3}-{4})'.format(
                self.vendor_code,
                self.the_consignment,
                self.count,
                self.stillage,
                self.cell
            )
        else:
            return '{0} ({1}) — {2}'.format(self.vendor_code, self.the_consignment, self.count)

    class Meta:
        verbose_name = 'Партия'
        verbose_name_plural = 'Партии'
