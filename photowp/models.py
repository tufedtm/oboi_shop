from django.db import models


class PhotoWPName(models.Model):
    name = models.CharField('Наименование', max_length=100)

    def __str__(self):
        return self.name

    class Meta:
        verbose_name = 'Наименование'
        verbose_name_plural = 'Наименования'


class PhotoWP(models.Model):
    SHEETS = (
        (1, 2),
        (2, 4),
        (3, 6),
        (4, 8),
        (5, 9),
        (6, 12),
        (7, 15),
        (8, 16),
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

    name = models.ForeignKey(PhotoWPName, verbose_name='Наименование')
    category = models.CharField('Категория', max_length=100, choices=CATEGORIES)
    sheet = models.PositiveSmallIntegerField('Листов', choices=SHEETS)
    width = models.PositiveSmallIntegerField('Ширина', choices=DIMENSIONS)
    length = models.PositiveSmallIntegerField('Длина', choices=DIMENSIONS)
    vendor_code = models.CharField('Артикул', max_length=10)
    count = models.PositiveSmallIntegerField('Количество')

    def __str__(self):
        return '{0} {1} {2}x{3}'.format(self.name, self.sheet, self.width, self.length)

    class Meta:
        verbose_name = 'Фотообои'
        verbose_name_plural = 'Фотообои'
