from django.db import models


class PhotoWP(models.Model):
    SHEETS = (
        (2, 2),
        (3, 3),
        (4, 4),
        (6, 6),
        (8, 8),
        (9, 9),
        (12, 12),
        (16, 16),
    )
    DIMENSIONS = (
        (97, 97),
        (98, 98),
        (134, 134),
        (136, 136),
        (194, 194),
        (196, 196),
        (200, 200),
        (201, 201),
        (204, 204),
        (260, 260),
        (261, 261),
        (268, 268),
        (272, 272),
        (291, 291),
        (294, 294),
        (300, 300),
        (388, 388),
        (392, 392),
        (408, 408),
    )

    CATEGORIES = (
        (1, 'Тула (эконом)'),
        (2, 'Тула (VIP)'),
        (3, 'Басс (люкс)'),
        (4, 'Басс (премиум)'),
    )

    category = models.PositiveSmallIntegerField('Категория', choices=CATEGORIES)
    name = models.CharField('Наименование', max_length=100)
    vendor_code = models.CharField('Артикул', max_length=10, blank=True)
    sheet = models.PositiveSmallIntegerField('Листов', choices=SHEETS)
    width = models.PositiveSmallIntegerField('Ширина', choices=DIMENSIONS)
    height = models.PositiveSmallIntegerField('Высота', choices=DIMENSIONS)
    count = models.PositiveSmallIntegerField('Количество')
    retail_price = models.PositiveIntegerField('Розничная цена')
    wholesale_price_pack = models.PositiveSmallIntegerField('Оптовая цена (кор)', null=True, blank=True)
    wholesale_price_item = models.PositiveSmallIntegerField('Оптовая цена (шт)', null=True, blank=True)

    def __str__(self):
        return '{0} {1}л {2}x{3}'.format(self.name, self.sheet, self.width, self.height)

    class Meta:
        verbose_name = 'Фотообои'
        verbose_name_plural = 'Фотообои'
