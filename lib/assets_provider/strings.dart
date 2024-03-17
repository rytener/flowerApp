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
}
