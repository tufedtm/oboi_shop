from django.db import models


def update_the_consignment(the_consignment):
    receipts = ReceiptContent.objects.filter(the_consignment=the_consignment)
    sellings = SellingContent.objects.filter(the_consignment=the_consignment)
    purchase_returns_set = PurchaseReturnsContent.objects.filter(the_consignment=the_consignment)

    count = 0
    for receipt in receipts:
        count += receipt.count
    for selling in sellings:
        count -= selling.count
    for purchase_return in purchase_returns_set:
        count += purchase_return.count

    the_consignment.count = count
    the_consignment.save()


class Contractor(models.Model):
    contractor_type = models.BooleanField('Поставщик?', default=False)
    first_name = models.CharField('Имя', max_length=50)
    company_name = models.CharField('Название компании', max_length=50, null=True, blank=True)
    last_name = models.CharField('Фамилия', max_length=50, null=True, blank=True)
    patronymic = models.CharField('Отчество', max_length=50, null=True, blank=True)
    phone_number = models.CharField('Номер телефона', max_length=20, null=True, blank=True)

    def __str__(self):
        if self.contractor_type:
            return '{0} {1} ({2}) {3}'.format(self.first_name, self.last_name, self.phone_number, self.company_name)
        return '{0} {1} ({2})'.format(self.first_name, self.last_name, self.phone_number)

    class Meta:
        verbose_name = 'Контрагент'
        verbose_name_plural = 'Контрагенты'


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
    retail_price = models.PositiveIntegerField('Розничная цена', null=True, blank=True)
    width = models.FloatField('Ширина (м)', default=1.06)
    length = models.FloatField('Длина (м)', default=10)
    combination = models.ManyToManyField('self', verbose_name='Комбинации', blank=True)
    discontinued = models.BooleanField('Снят с производства', default=False)
    pack = models.SmallIntegerField('Количество в упаковке', null=True, blank=True)

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
            return '{0} ({1}) — {2} ({3}/{4})'.format(
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
        unique_together = ('vendor_code', 'the_consignment')


class Selling(models.Model):
    buyer = models.ForeignKey(Contractor)
    date_create = models.DateTimeField('Дата составления')
    paid = models.BooleanField('Оплачено?')
    date_paid = models.DateTimeField('Дата оплаты', null=True, blank=True)

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
    price = models.PositiveIntegerField('Розничная цена')

    def __str__(self):
        return '{0} - {1}\u20BD'.format(self.selling_order, self.price)

    def save(self, *args, **kwargs):
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
    the_consignment = models.ForeignKey(TheConsignment)
    count = models.PositiveSmallIntegerField('Количество')

    def save(self, *args, **kwargs):
        super(PurchaseReturnsContent, self).save(*args, **kwargs)
        update_the_consignment(self.the_consignment)


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
    count = models.PositiveSmallIntegerField('Количество')
    price = models.PositiveIntegerField('Закупочная цена')

    def save(self, *args, **kwargs):
        super(ReceiptContent, self).save(*args, **kwargs)
        update_the_consignment(self.the_consignment)
