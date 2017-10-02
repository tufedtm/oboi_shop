from django.db import models


def update_the_consignment(the_consignment):
    receipt_set = ReceiptContent.objects.filter(the_consignment=the_consignment)
    selling_set = SellingContent.objects.filter(the_consignment=the_consignment)
    purchase_return_set = PurchaseReturnsContent.objects.filter(selling_content__the_consignment=the_consignment)

    count = 0
    for receipt in receipt_set:
        count += receipt.purchased
    for selling in selling_set:
        count -= selling.count
    for purchase_return in purchase_return_set:
        count += purchase_return.count

    the_consignment.count = count
    the_consignment.save()


class Contractor(models.Model):
    contractor_type = models.BooleanField('Поставщик?', default=False)
    first_name = models.CharField('Имя', max_length=50)
    company_name = models.CharField('Название компании', max_length=50, blank=True)
    last_name = models.CharField('Фамилия', max_length=50, blank=True)
    patronymic = models.CharField('Отчество', max_length=50, blank=True)
    phone_number = models.CharField('Номер телефона', max_length=20, blank=True)

    def __str__(self):
        if self.contractor_type:
            return '{0} {1} ({2}) {3}'.format(self.first_name, self.last_name, self.phone_number, self.company_name)
        return '{0} {1} ({2})'.format(self.first_name, self.last_name, self.phone_number)

    class Meta:
        verbose_name = 'Контрагент'
        verbose_name_plural = 'Контрагенты'


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
    pack = models.PositiveSmallIntegerField('Рулонов в упаковке', null=True, blank=True)
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
        if self.cell:
            return '{0} [{1}] — {2} ({3}/{4})'.format(
                self.vendor_code,
                self.the_consignment,
                self.count,
                self.stillage,
                self.cell
            )
        elif self.stillage:
            return '{0} [{1}] — {2} ({3})'.format(self.vendor_code, self.the_consignment, self.count, self.stillage)
        else:
            return '{0} [{1}] — {2}'.format(self.vendor_code, self.the_consignment, self.count)

    class Meta:
        verbose_name = 'Партия'
        verbose_name_plural = 'Партии'
        unique_together = ('vendor_code', 'the_consignment')


class Receipt(models.Model):
    shipper = models.ForeignKey(Contractor)
    date = models.DateTimeField('Дата')

    def __str__(self):
        return '{0} {1} {2}'.format(self.shipper, self.date.date(), self.date.time())

    def delete(self, *args, **kwargs):
        the_consignment_set = []
        for receipt_content in self.receiptcontent_set.all():
            the_consignment_set.append(receipt_content.the_consignment)
        super(Receipt, self).delete(*args, **kwargs)
        for the_consignment in the_consignment_set:
            update_the_consignment(the_consignment)

    class Meta:
        verbose_name = 'Поступление товара'
        verbose_name_plural = 'Поступления товара'


class ReceiptContent(models.Model):
    receipt = models.ForeignKey(Receipt)
    the_consignment = models.ForeignKey(TheConsignment)
    purchased = models.PositiveSmallIntegerField('Закуплено')
    balance = models.PositiveSmallIntegerField('Остаток', editable=False)
    price = models.PositiveIntegerField('Закупочная цена')

    def __str__(self):
        return '{0} {1}рул — {2}\u20BD'.format(self.the_consignment, self.balance, self.price)

    def delete(self, *args, **kwargs):
        super(ReceiptContent, self).delete(*args, **kwargs)
        update_the_consignment(self.the_consignment)

    def save(self, *args, **kwargs):
        if not self.pk:
            self.balance = self.purchased
        super(ReceiptContent, self).save(*args, **kwargs)
        update_the_consignment(self.the_consignment)


class Selling(models.Model):
    buyer = models.ForeignKey(Contractor)
    date_create = models.DateTimeField('Дата составления')
    paid = models.BooleanField('Оплачено?')
    date_paid = models.DateTimeField('Дата оплаты', null=True, blank=True)
    discount = models.PositiveSmallIntegerField('Скидка с суммы', null=True, blank=True)

    def __str__(self):
        return '{0} {1} {2}'.format(self.pk, self.buyer, self.date_create.time())

    def delete(self, *args, **kwargs):
        the_consignment_set = []
        for receipt_content in self.sellingcontent_set.all():
            the_consignment_set.append(receipt_content.the_consignment)
        super(Selling, self).delete(*args, **kwargs)
        for the_consignment in the_consignment_set:
            update_the_consignment(the_consignment)

    class Meta:
        verbose_name = 'Реализация товара'
        verbose_name_plural = 'Реалицазии товара'


class SellingContent(models.Model):
    selling_order = models.ForeignKey(Selling)
    the_consignment = models.ForeignKey(TheConsignment)
    count = models.PositiveSmallIntegerField('Количество')
    price = models.PositiveIntegerField('Продажная цена')
    retail_price = models.PositiveIntegerField('Розничная цена', editable=False)
    complement = models.BooleanField('Докупка', default=False)

    def __str__(self):
        return '{0} - {1}\u20BD'.format(self.selling_order, self.price)

    def delete(self, *args, **kwargs):
        super(SellingContent, self).delete(*args, **kwargs)
        update_the_consignment(self.the_consignment)

    def save(self, *args, **kwargs):
        if not self.pk:
            self.retail_price = self.the_consignment.retail_price
        super(SellingContent, self).save(*args, **kwargs)
        update_the_consignment(self.the_consignment)


class PurchaseReturns(models.Model):
    selling = models.ForeignKey(Selling)
    date = models.DateTimeField('Дата')

    def __str__(self):
        return '{0} ({1})'.format(self.selling, self.date.time())

    def delete(self, *args, **kwargs):
        the_consignment_set = []
        for receipt_content in self.purchasereturnscontent_set.all():
            the_consignment_set.append(receipt_content.the_consignment)
        super(PurchaseReturns, self).delete(*args, **kwargs)
        for the_consignment in the_consignment_set:
            update_the_consignment(the_consignment)

    class Meta:
        verbose_name = 'Возврат товара'
        verbose_name_plural = 'Возвраты товара'


class PurchaseReturnsContent(models.Model):
    purchase_returns = models.ForeignKey(PurchaseReturns)
    selling_content = models.ForeignKey(SellingContent)
    count = models.PositiveSmallIntegerField('Количество')
    reason = models.CharField('Причина', max_length=500)

    def delete(self, *args, **kwargs):
        super(PurchaseReturnsContent, self).delete(*args, **kwargs)
        update_the_consignment(self.selling_content.the_consignment)

    def save(self, *args, **kwargs):
        super(PurchaseReturnsContent, self).save(*args, **kwargs)
        update_the_consignment(self.selling_content.the_consignment)
