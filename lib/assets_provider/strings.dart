import 'package:flutter/material.dart';

abstract class AppStrings {
  static const String login = 'Войти';
  static const  String firstLabel ='Главная';
  static const String secondLabel ='Корзина';
  static const String thirdLabel ='Избранное';
  static const String fourthLabel ='Профиль';
  static const Text autharization = Text(
    'Авторизация',
    style: TextStyle(
        fontFamily: 'Lato-Bold',
        fontWeight: FontWeight.w700,
        fontSize: 15.0,
        color: Colors.black),
  );
  static const Text welcome = Text(
    'Добро пожаловать',
    style: TextStyle(
        fontFamily: 'Lato-Bold',
        fontWeight: FontWeight.w700,
        fontSize: 15.0,
        color: Colors.black),
  );
  static const Text firstButton = Text(
    'Получить код 1',
    style: TextStyle(
        fontFamily: 'Lato',
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
  static const Text productCost = Text(
    '135 000 p.',
    style: TextStyle(
        fontFamily: 'Lato-Bold',
        fontWeight: FontWeight.w700,
        fontSize: 15.0,
        color: Colors.white),
  );
}
