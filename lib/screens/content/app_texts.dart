import 'package:flutter/material.dart';

//Авторизация
final Text Twelcome = Text('Добро пожаловать', style: CustomText.standart);
final Text Tappbar = Text('Авторизация', style: CustomText.standart);

class CustomText {
  static const TextStyle standart = TextStyle(
    fontSize: 24.0,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
}
