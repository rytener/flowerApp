import 'package:flutter/material.dart';
import 'package:lilar_test_app/assetsprovider/images.dart';

abstract class AppProducts {
   static final List<Map<String, dynamic>> productsMap = [
    {
      "title": "Букет пионов",
      "sellCost": "35 000 р.",
      "discountCost": "70 000 р.",
      "images": AppImages.product1,
      "favoriteState": false,
    },
    {
      "title": "Букет роз",
      "sellCost": "123 000 р.",
      "discountCost": "256 000 р.",
      "images": AppImages.product2,
      "favoriteState": false,
    },
    {
      "title": "Букет гортензий",
      "sellCost": "35 000 р.",
      "discountCost": "70 000 р.",
      "images": AppImages.product3,
      "favoriteState": false,
    },
    {
      "title": "Букет крафтовый 1",
      "sellCost": "35 000 р.",
      "discountCost": "70 000 р.",
      "images": AppImages.product4,
      "favoriteState": false,
    },
    {
      "title": "43",
      "sellCost": "123 rub",
      "discountCost": "256 rub",
      "images": AppImages.splash,
      "favoriteState": false,
    },
    {
      "title": "12333",
      "sellCost": "123 rub",
      "discountCost": "256 rub",
      "images": AppImages.splash,
      "favoriteState": false,
    },
  ];
}
