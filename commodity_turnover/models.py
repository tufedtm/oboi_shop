from django.contrib.contenttypes.fields import GenericForeignKey
from django.contrib.contenttypes.models import ContentType
from django.db import models
from django.utils import timezone

from .managers import (
    ReceiptManager, ReceiptContentManager,
    SellingManager, SellingContentManager,
    PurchaseReturnManager, PurchaseReturnContentManager
)


def update_balance(model, object_id):
    goods = model.get_object_for_this_type(pk=object_id)
    receipt_set = ReceiptContent.objects.filter(content_type=model, object_id=object_id)
    selling_set = SellingContent.objects.filter(content_type=model, object_id=object_id)
    purchase_return_set = PurchaseReturnContent.objects \
        .filter(selling_content__content_type=model, selling_content__object_id=object_id)

    count = 0
    for receipt in receipt_set:
        count += receipt.count
    for selling in selling_set:
        if selling.pack and selling.wholesale:
            count -= goods.pack * selling.count
        else:
            count -= selling.count
    for purchase_return in purchase_return_set:
        count += purchase_return.count

    goods.count = count
    goods.save()


class Contractor(models.Model):
    contractor_type = models.BooleanField('Поставщик?', default=False)
    first_name = models.CharField('Имя', max_length=50)
    company_name = models.CharField('Название компании', max_length=50, blank=True)
    last_name = models.CharField('Фамилия', max_length=50, blank=True)
    patronymic = models.CharField('Отчество', max_length=50, blank=True)
    phone_number = models.CharField('Номер телефона', max_length=20, blank=True)

    def __str__(self):
        return '{0} {1}'.format(self.first_name, self.last_name)

    class Meta:
        ordering = ('first_name',)
        verbose_name = 'Контрагент'
        verbose_name_plural = 'Контрагенты'


class Receipt(models.Model):
    shipper = models.ForeignKey(Contractor, verbose_name=Contractor._meta.verbose_name)
    date = models.DateTimeField('Дата', default=timezone.now)

    objects = ReceiptManager()

    def __str__(self):
        return '{0} {1} {2}'.format(self.shipper, self.date.date(), timezone.localtime(self.date).time())

    class Meta:
        verbose_name = 'Приход'
        verbose_name_plural = 'Приходы'


class ReceiptContent(models.Model):
    receipt = models.ForeignKey(Receipt, verbose_name=Receipt._meta.verbose_name)
    content_type = models.ForeignKey(
        ContentType,
        verbose_name='Тип товара',
        on_delete=models.CASCADE,
        limit_choices_to={'model__in': ('theconsignment', 'photowp', 'glue')},
        default=10,
    )
    object_id = models.PositiveIntegerField('Товар')
    content_object = GenericForeignKey('content_type', 'object_id')
    count = models.PositiveSmallIntegerField('Закуплено')
    price = models.PositiveIntegerField('Закупочная цена')

    objects = ReceiptContentManager()

    def __str__(self):
        return '{0} — {1} — {2}\u20BD'.format(self.content_object, self.count, self.price)

    def save(self, *args, **kwargs):
        super(ReceiptContent, self).save(*args, **kwargs)
        update_balance(
            ContentType.objects.get(model=self.content_type.model),
            self.object_id
        )

    class Meta:
        verbose_name = 'Позиция прихода'
        verbose_name_plural = 'Позиции приходов'


class Selling(models.Model):
    buyer = models.ForeignKey(Contractor, verbose_name=Contractor._meta.verbose_name)
    date_create = models.DateTimeField('Дата составления', default=timezone.now)
    date_paid = models.DateTimeField('Дата оплаты', default=timezone.now, null=True, blank=True)
    comment = models.CharField('Комментарий', max_length=255, blank=True)

    objects = SellingManager()

    def __str__(self):
        return '{0} {1} {2} {3} — {4}\u20BD'.format(
            self.pk,
            self.buyer,
            self.date_create.date(),
            timezone.localtime(self.date_create).time(),
            self.get_sum(),
        )

    def get_sum(self):
        total_sum = 0
        for sc in self.sellingcontent_set.all():
            total_sum += sc.get_sum()
        return total_sum

    def is_paid(self):
        if self.date_paid:
            return '\u2713'

    class Meta:
        verbose_name = 'Продажа'
        verbose_name_plural = 'Продажи'


class SellingContent(models.Model):
    selling_order = models.ForeignKey(Selling, verbose_name=Selling._meta.verbose_name)
    content_type = models.ForeignKey(
        ContentType,
        verbose_name='Тип товара',
        on_delete=models.CASCADE,
        limit_choices_to={'model__in': ('theconsignment', 'photowp', 'glue')},
        default=10,
    )
    object_id = models.PositiveIntegerField('Товар')
    content_object = GenericForeignKey('content_type', 'object_id')
    count = models.PositiveSmallIntegerField('Количество')
    price = models.PositiveIntegerField('Продажная цена')
    wholesale = models.BooleanField('Оптом?', default=False)
    pack = models.BooleanField('Коробка?', default=False)
    complement = models.BooleanField('Докупка', default=False)
    sold_price = models.PositiveIntegerField('Розничная цена', editable=False)

    objects = SellingContentManager()

    def __str__(self):
        return '{0} — {1}\u20BD'.format(
            self.content_type.get_object_for_this_type(pk=self.object_id),
            self.get_sum(),
        )

    def get_item(self):
        return self.content_type.get_object_for_this_type(pk=self.object_id)

    def get_sum(self):
        return self.count * self.price

    def save(self, *args, **kwargs):
        model = ContentType.objects.get(model=self.content_type.model)
        if not self.pk:
            if self.pack and self.wholesale:
                self.sold_price = model.get_object_for_this_type(pk=self.object_id).wholesale_price_pack
            elif self.wholesale:
                self.sold_price = model.get_object_for_this_type(pk=self.object_id).wholesale_price_item
            else:
                self.sold_price = model.get_object_for_this_type(pk=self.object_id).retail_price

        super(SellingContent, self).save(*args, **kwargs)
        update_balance(
            model,
            self.object_id
        )

    class Meta:
        verbose_name = 'Позиция продажи'
        verbose_name_plural = 'Позиции продаж'


class PurchaseReturn(models.Model):
    selling = models.ForeignKey(Selling, verbose_name=Selling._meta.verbose_name)
    date = models.DateTimeField('Дата', default=timezone.now)

    objects = PurchaseReturnManager()

    def __str__(self):
        return '{0} ({1})'.format(self.selling, timezone.localtime(self.date).time())

    class Meta:
        verbose_name = 'Возврат'
        verbose_name_plural = 'Возвраты'


class PurchaseReturnContent(models.Model):
    purchase_returns = models.ForeignKey(PurchaseReturn, verbose_name=PurchaseReturn._meta.verbose_name)
    selling_content = models.ForeignKey(SellingContent, verbose_name=SellingContent._meta.verbose_name)
    count = models.PositiveSmallIntegerField('Количество')
    reason = models.CharField('Причина', max_length=500)

    objects = PurchaseReturnContentManager()

    def __str__(self):
        return '{0} — {1}'.format(self.purchase_returns, self.count)

    def save(self, *args, **kwargs):
        super(PurchaseReturnContent, self).save(*args, **kwargs)
        update_balance(
            ContentType.objects.get(model=self.selling_content.content_type.model),
            self.selling_content.object_id
        )

    class Meta:
        verbose_name = 'Позиция возврата'
        verbose_name_plural = 'Позиции возвратов'
