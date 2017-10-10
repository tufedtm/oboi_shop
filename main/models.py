from django.db import models


class Brand(models.Model):
    COUNTRIES_OF_ORIGIN = (
        ('RU', 'Россия'),
        ('CH', 'Китай'),
        ('IT', 'Италия'),
        ('DE', 'Германия'),
        ('BE', 'Бельгия'),
        ('KR', 'Корея'),
        ('UA', 'Украина'),
        ('TR', 'Турция'),
        ('TW', 'Тайвань'),
        ('FR', 'Франция'),
    )

    name = models.CharField('Бренд', max_length=100, null=True, blank=True)
    short_name = models.CharField('Сокращенное название', max_length=50, blank=True)
    country_of_origin = models.CharField('Страна производства', max_length=2, choices=sorted(COUNTRIES_OF_ORIGIN))
    company_of_origin = models.CharField('Компания производитель', max_length=100, blank=True)

    def __str__(self):
        if self.name:
            return '{0} ({1})'.format(self.name, self.country_of_origin)
        return '{0} ({1})'.format(self.company_of_origin, self.country_of_origin)

    class Meta:
        verbose_name = 'Бренд'
        verbose_name_plural = 'Бренды'
        unique_together = ('name', 'country_of_origin')


class VendorCode(models.Model):
    RAPPORT_TYPES = (
        (1, 'произвольный'),
        (2, 'прямой'),
        (3, 'со смещением'),
        (4, 'обратный'),
    )
    MARKING = (
        ('А', 'Акриловые'),
        ('Б', 'Бумажные'),
        ('ВВ', 'Вспененный винил'),
        ('ПВ', 'Плоский винил'),
        ('РВ', 'Рельефный винил'),
        ('СТЛ', 'Стеклообои'),
        ('СТР', 'Структурные'),
        ('ТСК', 'Текстильные'),
    )
    BASIS_MATERIALS = (
        (1, 'бумага'),
        (2, 'флизелин'),
    )
    COVERING_MATERIAL = (
        (1, 'бумага'),
        (2, 'винил'),
    )
    MOISTURE_RESISTANCES = (
        ('В-0', 'Влагостойкие при наклеивании'),
        ('В-1', 'Влагостойкие при эксплуатации'),
        ('М-1', 'Устойчивые к мытью (моющиеся)'),
        ('М-2', 'Высокоустойчивые к мытью'),
        ('М-3', 'Устойчивые к трению'),
        ('М-4', 'Высокоустойчивые к трению'),
    )
    RESISTANCE_TO_LIGHT = (
        (3, 'средняя'),
        (4, 'удовлетворительная'),
        (5, 'хорошая'),
        (6, 'очень хорошая'),
        (7, 'отличная'),
    )
    GLUING = (
        ('БК', 'Клей наносится на обои'),
        ('ОК', 'Клей наносится на основу'),
        ('ГК', 'Полотно наклеиваемые горизонтально'),
        ('Г', 'Гуммированные обои'),
    )
    REMOVAL = (
        (1, 'Снимаемые без остатка'),
        (2, 'Расслаиваемые'),
        (3, 'Увлажняемые для снятия'),
    )

    brand = models.ForeignKey(Brand, null=True, blank=True)
    vendor_code = models.CharField('Артикул', max_length=20, unique=True)
    wholesale_price = models.PositiveIntegerField('Оптовая цена', default=0)
    width = models.FloatField('Ширина', default=1.06, help_text='м')
    length = models.FloatField('Длина', default=10.05, help_text='м')
    combination = models.ManyToManyField('self', verbose_name='Компаньоны', blank=True)
    discontinued = models.BooleanField('Снят с производства', default=False)
    pack = models.PositiveSmallIntegerField('Рулонов в коробке', null=True, blank=True)
    rapport = models.CharField('Раппорт', max_length=9, default=0, help_text='см', blank=True)
    rapport_type = models.PositiveSmallIntegerField(
        'Тип раппорта', choices=RAPPORT_TYPES, default=1, null=True, blank=True
    )
    marking = models.CharField('Маркировка', max_length=3, choices=MARKING, blank=True)
    basis_material = models.PositiveSmallIntegerField(
        'Материал основы', choices=BASIS_MATERIALS, default=2, null=True, blank=True
    )
    covering_material = models.PositiveSmallIntegerField(
        'Материал покрытия', choices=COVERING_MATERIAL, default=2, null=True, blank=True
    )
    moisture_resistance = models.CharField(
        'Влагостойкость', max_length=3, choices=MOISTURE_RESISTANCES, default='М-2', null=True, blank=True
    )
    resistance_to_light = models.PositiveSmallIntegerField(
        'Светостойкость', choices=RESISTANCE_TO_LIGHT, default=5, null=True, blank=True
    )
    gluing = models.CharField('Наклеивание', max_length=2, choices=GLUING, default='ОК', blank=True)
    removal = models.PositiveSmallIntegerField('Снятие со стены', choices=REMOVAL, default=1, null=True, blank=True)

    def __str__(self):
        return self.vendor_code

    class Meta:
        verbose_name = 'Артикул'
        verbose_name_plural = 'Артикулы'


class TheConsignment(models.Model):
    STILLAGES = ((x, x) for x in range(1, 11))
    CELLS = ((x, x) for x in range(1, 21))

    vendor_code = models.ForeignKey(VendorCode, verbose_name='Артикул')
    the_consignment = models.CharField('Партия', max_length=20, blank=True)
    retail_price = models.PositiveIntegerField('Розничная цена', default=0)
    count = models.PositiveSmallIntegerField('Количество рулонов')
    stillage = models.PositiveSmallIntegerField('Стеллаж', choices=STILLAGES, null=True, blank=True)
    cell = models.PositiveSmallIntegerField('Ячейка', choices=CELLS, null=True, blank=True)
    showcase = models.BooleanField('На витрине?', default=True)

    def __str__(self):
        if self.get_stillage():
            return '{0} [{1}] — {2}рул ({3})'.format(
                self.vendor_code,
                self.the_consignment,
                self.count,
                self.get_stillage(),
            )
        else:
            return '{0} [{1}] — {2}'.format(self.vendor_code, self.the_consignment, self.count)

    def get_stillage(self):
        if self.cell:
            return '{0}/{1}'.format(self.stillage, self.cell)
        elif self.stillage:
            return self.stillage

    class Meta:
        verbose_name = 'Партия'
        verbose_name_plural = 'Партии'
        unique_together = ('vendor_code', 'the_consignment')


class Receipt(models.Model):
    date = models.DateTimeField('Дата')

    def delete(self, *args, **kwargs):
        the_consignment_set = []
        for receipt_content in self.receiptcontent_set.all():
            the_consignment_set.append(receipt_content.the_consignment)
        super(Receipt, self).delete(*args, **kwargs)
        for the_consignment in the_consignment_set:
            update_the_consignment(the_consignment)


class Selling(models.Model):
    date_create = models.DateTimeField('Дата составления')
    paid = models.BooleanField('Оплачено?')
    date_paid = models.DateTimeField('Дата оплаты', null=True, blank=True)
    discount = models.PositiveSmallIntegerField('Скидка с суммы', null=True, blank=True)

    def delete(self, *args, **kwargs):
        the_consignment_set = []
        for receipt_content in self.sellingcontent_set.all():
            the_consignment_set.append(receipt_content.the_consignment)
        super(Selling, self).delete(*args, **kwargs)
        for the_consignment in the_consignment_set:
            update_the_consignment(the_consignment)


class PurchaseReturns(models.Model):
    selling = models.ForeignKey(Selling)
    date = models.DateTimeField('Дата')

    def delete(self, *args, **kwargs):
        the_consignment_set = []
        for receipt_content in self.purchasereturnscontent_set.all():
            the_consignment_set.append(receipt_content.the_consignment)
        super(PurchaseReturns, self).delete(*args, **kwargs)
        for the_consignment in the_consignment_set:
            update_the_consignment(the_consignment)
