import 'package:lilar_test_app/assets_provider/images.dart';

abstract class AppProducts {
  static final List<Map<String, dynamic>> productsMap = [
    {
      "title": "Букет пионов",
      "sellCost": "35 000 р.",
      "discountCost": "70 000 р.",
      "images": AppImages.product1,
      "type": "flowers"
    },
    {
      "title": "Букет роз",
      "sellCost": "123 000 р.",
      "discountCost": "256 000 р.",
      "images": AppImages.product2,
      "type": "flowers"
    },
    {
      "title": "Букет гортензий",
      "sellCost": "35 000 р.",
      "discountCost": "70 000 р.",
      "images": AppImages.product3,
      "type": "flowers"
    },
    {
      "title": "Букет крафтовый 1",
      "sellCost": "35 000 р.",
      "discountCost": "70 000 р.",
      "images": AppImages.product4,
      "type": "flowers"
    },
    {
      "title": "43",
      "sellCost": "123 rub",
      "discountCost": "256 rub",
      "images": AppImages.splash,
      "type": "flowers"
    },
    {
      "title": "Покраска Забора",
      "sellCost": "123 rub",
      "discountCost": "256 rub",
      "images": AppImages.splash,
      "type": "presents"
    },
    {
      "title": "Букет пионов",
      "sellCost": "35 000 р.",
      "discountCost": "70 000 р.",
      "images": AppImages.product1,
      "type": "flowers"
    },
  ];
}
