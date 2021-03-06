# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-10-22 21:45
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='vendorcode',
            name='wholesale_price',
        ),
        migrations.AddField(
            model_name='theconsignment',
            name='wholesale_price_item',
            field=models.PositiveSmallIntegerField(blank=True, null=True, verbose_name='Оптовая цена (рул)'),
        ),
        migrations.AddField(
            model_name='theconsignment',
            name='wholesale_price_pack',
            field=models.PositiveSmallIntegerField(blank=True, null=True, verbose_name='Оптовая цена (кор)'),
        ),
    ]
