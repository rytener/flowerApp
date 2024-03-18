import 'package:flutter/material.dart';

abstract class AppStrings {
  static const String login = 'Войти';
  static const String homeLabel ='Главная';
  static const String shopBagLabel ='Корзина';
  static const String favoriteLabel ='Избранное';
  static const String profileLabel ='Профиль';
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
}
