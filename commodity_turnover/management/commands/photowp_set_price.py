from django.core.management import BaseCommand

from commodity_turnover.models import ReceiptContent
from photowp.models import PhotoWP


class Command(BaseCommand):
    help = 'Устанавливает цены (закупочные, оптовые и розничные) на фотообои'

    def handle(self, *args, **options):
        queryset = ReceiptContent.objects.filter(content_type_id=13)

        categories = {
            1: [
                {'sheet': 2, 'purchase_price': 120, 'retail_price': 600, 'wholesale_price_item': 350},
                {'sheet': 4, 'purchase_price': 175, 'retail_price': 700, 'wholesale_price_item': 400},
                {'sheet': 6, 'purchase_price': 195, 'retail_price': 800, 'wholesale_price_item': 450},
                {'sheet': 8, 'purchase_price': 230, 'retail_price': 900, 'wholesale_price_item': 500},
                {'sheet': 9, 'purchase_price': 240, 'retail_price': 1000, 'wholesale_price_item': 550},
                {'sheet': 12, 'purchase_price': 280, 'retail_price': 1100, 'wholesale_price_item': 600},
            ],
            2: [
                {'sheet': 4, 'purchase_price': 520, 'retail_price': 1300, 'wholesale_price_item': 950},
                {'sheet': 6, 'purchase_price': 610, 'retail_price': 1400, 'wholesale_price_item': 1000},
                {'sheet': 8, 'purchase_price': 670, 'retail_price': 1500, 'wholesale_price_item': 1100},
                {'sheet': 9, 'purchase_price': 700, 'retail_price': 1550, 'wholesale_price_item': 1100},
                {'sheet': 12, 'purchase_price': 750, 'retail_price': 1700, 'wholesale_price_item': 1150},
                {'sheet': 16, 'purchase_price': 810, 'retail_price': 1800, 'wholesale_price_item': 1250},
            ],
            3: [
                {'sheet': 3, 'purchase_price': 140, 'retail_price': 800, 'wholesale_price_item': 450},
                {'sheet': 4, 'purchase_price': 175, 'retail_price': 900, 'wholesale_price_item': 500},
                {'sheet': 6, 'purchase_price': 230, 'retail_price': 1000, 'wholesale_price_item': 550},
                {'sheet': 8, 'purchase_price': 280, 'retail_price': 1100, 'wholesale_price_item': 650},
                {'sheet': 9, 'purchase_price': 300, 'retail_price': 1200, 'wholesale_price_item': 700},
                {'sheet': 12, 'purchase_price': 410, 'retail_price': 1300, 'wholesale_price_item': 800},
            ],
            4: [
                {'sheet': 3, 'purchase_price': 215, 'retail_price': 900, 'wholesale_price_item': 450},
                {'sheet': 4, 'purchase_price': 260, 'retail_price': 1000, 'wholesale_price_item': 550},
                {'sheet': 6, 'purchase_price': 330, 'retail_price': 1100, 'wholesale_price_item': 600},
                {'sheet': 8, 'purchase_price': 420, 'retail_price': 1200, 'wholesale_price_item': 700},
                {'sheet': 9, 'purchase_price': 450, 'retail_price': 1300, 'wholesale_price_item': 750},
                {'sheet': 12, 'purchase_price': 570, 'retail_price': 1400, 'wholesale_price_item': 850},
            ],
        }

        for k, v in categories.items():
            for item in v:
                tmp = [x[0] for x in PhotoWP.objects.filter(category=k, sheet=item['sheet']).values_list('id')]
                queryset.filter(object_id__in=tmp).update(price=item['purchase_price'])
                PhotoWP.objects.filter(category=k, sheet=item['sheet']).update(
                    retail_price=item['retail_price'], wholesale_price_item=item['wholesale_price_item']
                )

        self.stdout.write(self.style.SUCCESS('закупочные, оптовые и розничные цены установлены'))
