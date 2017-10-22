# -*- coding: utf-8 -*-
# Generated by Django 1.11.6 on 2017-10-22 21:45
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('photowp', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='photowp',
            name='wholesale_price_item',
            field=models.PositiveSmallIntegerField(blank=True, null=True, verbose_name='Оптовая цена (шт)'),
        ),
        migrations.AddField(
            model_name='photowp',
            name='wholesale_price_pack',
            field=models.PositiveSmallIntegerField(blank=True, null=True, verbose_name='Оптовая цена (кор)'),
        ),
    ]
