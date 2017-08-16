from django.db import models


class VendorCode(models.Model):
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

    vendor_code = models.ForeignKey(VendorCode, verbose_name='Артикул')
    the_consignment = models.CharField('Партия', max_length=20, null=True, blank=True)
    count = models.PositiveSmallIntegerField('Количество рулонов')
    stillage = models.PositiveSmallIntegerField('Стеллаж', choices=STILLAGES, default=10, null=True, blank=True)
    cell = models.PositiveSmallIntegerField('Ячейка', null=True, blank=True, default=7)

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
