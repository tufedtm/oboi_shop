from django.contrib.contenttypes.fields import GenericForeignKey
from django.contrib.contenttypes.models import ContentType
from django.db import models


def update_balance(model, object_id):
    model = model.get_object_for_this_type(pk=object_id)
    receipt_set = ReceiptContent.objects.filter(object_id=object_id)
    selling_set = SellingContent.objects.filter(object_id=object_id)
    purchase_return_set = PurchaseReturnContent.objects.filter(selling_content__object_id=object_id)

    count = 0
    for receipt in receipt_set:
        count += receipt.count
    for selling in selling_set:
        count -= selling.count
    for purchase_return in purchase_return_set:
        count += purchase_return.count

    model.count = count
    model.save()


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


class Receipt(models.Model):
    shipper = models.ForeignKey(Contractor, verbose_name=Contractor._meta.verbose_name)
    date = models.DateTimeField('Дата')

    def __str__(self):
        return '{0} {1} {2}'.format(self.shipper, self.date.date(), self.date.time())

    class Meta:
        verbose_name = 'Поступление товара'
        verbose_name_plural = 'Поступления товара'


class ReceiptContent(models.Model):
    receipt = models.ForeignKey(Receipt, verbose_name=Receipt._meta.verbose_name)
    content_type = models.ForeignKey(
        ContentType,
        on_delete=models.CASCADE,
        limit_choices_to={'model__in': ('theconsignment', 'photowp', 'glue')},
    )
    object_id = models.PositiveIntegerField()
    content_object = GenericForeignKey('content_type', 'object_id')
    count = models.PositiveSmallIntegerField('Закуплено')
    price = models.PositiveIntegerField('Закупочная цена')

    def __str__(self):
        return '{0} — {1} — {2}\u20BD'.format(self.content_object, self.count, self.price)

    def save(self, *args, **kwargs):
        super(ReceiptContent, self).save(*args, **kwargs)
        update_balance(
            ContentType.objects.get(model=self.content_type.model),
            self.object_id
        )


class Selling(models.Model):
    buyer = models.ForeignKey(Contractor, verbose_name=Contractor._meta.verbose_name)
    date_create = models.DateTimeField('Дата составления')
    paid = models.BooleanField('Оплачено?')
    date_paid = models.DateTimeField('Дата оплаты', null=True, blank=True)
    discount = models.PositiveSmallIntegerField('Скидка с суммы', null=True, blank=True)

    def __str__(self):
        return '{0} {1} {2}'.format(self.pk, self.buyer, self.date_create.time())

    class Meta:
        verbose_name = 'Реализация товара'
        verbose_name_plural = 'Реалицазии товара'


class SellingContent(models.Model):
    selling_order = models.ForeignKey(Selling, verbose_name=Selling._meta.verbose_name)
    content_type = models.ForeignKey(
        ContentType,
        on_delete=models.CASCADE,
        limit_choices_to={'model__in': ('theconsignment', 'photowp', 'glue')},
    )
    object_id = models.PositiveIntegerField()
    content_object = GenericForeignKey('content_type', 'object_id')
    count = models.PositiveSmallIntegerField('Количество')
    price = models.PositiveIntegerField('Продажная цена')
    retail_price = models.PositiveIntegerField('Розничная цена', editable=False)
    complement = models.BooleanField('Докупка', default=False)

    def __str__(self):
        return '{0} - {1}\u20BD'.format(self.selling_order, self.price)

    def save(self, *args, **kwargs):
        model = ContentType.objects.get(model=self.content_type.model)
        if not self.pk:
            self.retail_price = model.get_object_for_this_type(pk=self.object_id).retail_price

        super(SellingContent, self).save(*args, **kwargs)
        update_balance(
            model,
            self.object_id
        )


class PurchaseReturn(models.Model):
    selling = models.ForeignKey(Selling, verbose_name=Selling._meta.verbose_name)
    date = models.DateTimeField('Дата')

    def __str__(self):
        return '{0} ({1})'.format(self.selling, self.date.time())

    class Meta:
        verbose_name = 'Возврат товара'
        verbose_name_plural = 'Возвраты товара'


class PurchaseReturnContent(models.Model):
    purchase_returns = models.ForeignKey(PurchaseReturn, verbose_name=PurchaseReturn._meta.verbose_name)
    selling_content = models.ForeignKey(SellingContent, verbose_name=SellingContent._meta.verbose_name)
    count = models.PositiveSmallIntegerField('Количество')
    reason = models.CharField('Причина', max_length=500)

    def save(self, *args, **kwargs):
        super(PurchaseReturnContent, self).save(*args, **kwargs)
        update_balance(
            ContentType.objects.get(model=self.selling_content.content_type.model),
            self.selling_content.object_id
        )
