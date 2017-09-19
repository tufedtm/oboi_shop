# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-08-21 20:30
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0007_theconsignment_showcase'),
    ]

    operations = [
        migrations.AlterField(
            model_name='brand',
            name='name',
            field=models.CharField(blank=True, max_length=100, null=True, unique=True, verbose_name='Бренд'),
        ),
        migrations.AlterField(
            model_name='vendorcode',
            name='width',
            field=models.FloatField(default=0.7, verbose_name='Ширина (м)'),
        ),
    ]