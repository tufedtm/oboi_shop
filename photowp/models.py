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
        (1, 97),
        (2, 98),
        (3, 134),
        (4, 136),
        (5, 194),
        (6, 196),
        (7, 200),
        (8, 201),
        (9, 204),
        (10, 260),
        (11, 261),
        (12, 268),
        (13, 272),
        (14, 291),
        (15, 294),
        (16, 300),
        (17, 388),
        (18, 392),
    )

    CATEGORIES = (
        (1, 'Тула (эконом)'),
        (2, 'Тула (VIP)'),
        (3, 'Басс (люкс)'),
        (4, 'Басс (премиум)'),
    )

    name = models.CharField('Наименование', max_length=100)
    category = models.PositiveSmallIntegerField('Категория', choices=CATEGORIES)
    sheet = models.PositiveSmallIntegerField('Листов', choices=SHEETS)
    width = models.PositiveSmallIntegerField('Ширина', choices=DIMENSIONS)
    height = models.PositiveSmallIntegerField('Высота', choices=DIMENSIONS)
    vendor_code = models.CharField('Артикул', max_length=10, blank=True)
    count = models.PositiveSmallIntegerField('Количество')
    retail_price = models.PositiveIntegerField('Розничная цена')

    def __str__(self):
        return '{0} {1}л {2}x{3}'.format(self.name, self.sheet, self.width, self.height)

    class Meta:
        verbose_name = 'Фотообои'
        verbose_name_plural = 'Фотообои'
