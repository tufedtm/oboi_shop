# -*- coding: utf-8 -*-
# Generated by Django 1.11.4 on 2017-08-21 20:31
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main', '0008_auto_20170821_2330'),
    ]

    operations = [
        migrations.AlterField(
            model_name='brand',
            name='name',
            field=models.CharField(default=1, max_length=100, unique=True, verbose_name='Бренд'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='vendorcode',
            name='brand',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='main.Brand'),
        ),
    ]