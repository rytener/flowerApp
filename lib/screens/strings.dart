import 'dart:ui';
import 'components.dart';
import 'package:flutter/material.dart';

abstract class AppStrings {
  static const String autharization = 'Авторизация';
  static const String welcome = 'Добро пожаловать';
  static const Text firstButton = Text(
    'Получить код 1',
    style: TextStyle(
        fontFamily: 'Lato-Bold',
        fontWeight: FontWeight.w700,
        fontSize: 15.0,
        color: Colors.white),
  );
  static const Text secondButton = Text(
    'Получить код 2',
    style: TextStyle(
        fontFamily: 'Lato-Bold',
        fontWeight: FontWeight.w700,
        fontSize: 15.0,
        color: Colors.white),
  );
  static const Text thirdButton = Text(
    'Получить код 3',
    style: TextStyle(
        fontFamily: 'Lato-Bold',
        fontWeight: FontWeight.w700,
        fontSize: 15.0,
        color: Colors.white),
  );
}
