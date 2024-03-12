import 'colors.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static const latoRegularGreen600 = TextStyle(
    fontFamily: 'Lato-Regular',
    fontWeight: FontWeight.w500,
    fontSize: 15.0,
    color: AppColors.mainLightGreen,
  );
  static const latoRegularWhite600 = TextStyle(
    fontFamily: 'Lato-Regular',
    fontWeight: FontWeight.w500,
    fontSize: 15.0,
    color: Colors.white,
  );
  static const latoBoldGreen800 = TextStyle(
    fontFamily: 'Lato-Bold',
    fontWeight: FontWeight.w800,
    fontSize: 16.0,
    color: AppColors.mainLightGreen,
  );
  static const latoRegularDarkGreen600 = TextStyle(
    fontFamily: 'Lato',
    fontWeight: FontWeight.w600,
    fontSize: 14.0,
    color: AppColors.mainDarkGreen,
  );
  static const latoRegularGrey600 = TextStyle(
      fontFamily: 'Lato',
      fontWeight: FontWeight.w600,
      fontSize: 12.0,
      color: AppColors.greyText,
      decoration: TextDecoration.lineThrough,
      decorationColor: AppColors.greyText);
  static const latoRegularGrey400 = TextStyle(
      fontFamily: 'Lato-Regular',
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
      color: AppColors.greyText,
  );
}
