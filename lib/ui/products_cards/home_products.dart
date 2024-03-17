import 'package:flutter/material.dart';
import 'package:lilar_test_app/assets_provider/colors.dart';
import 'package:lilar_test_app/assets_provider/text_styles.dart';
import 'package:lilar_test_app/assets_provider/icons.dart';

class AppBarContainers extends StatelessWidget {
  double sizeHeight;
  double sizeWidth;
  double radius;
  Color selectedColor;
  Color unselectedColor;
  TextStyle style;
  final String text;

  // final VoidCallback onPressed;
  bool isSelected;

  AppBarContainers({
    this.sizeHeight = 40,
    this.style = AppTextStyles.latoRegularGreen600,
    required this.sizeWidth,
    this.radius = 16,
    this.unselectedColor = AppColors.buttonShadow,
    this.selectedColor = AppColors.mainLightGreen,
    this.isSelected = false,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {},
      child: Container(
        height: sizeHeight,
        width: sizeWidth,
        decoration: BoxDecoration(
          color: unselectedColor,
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyles.latoRegularGreen600,
          ),
        ),
      ),
    );
  }
}

class FavoriteProduct extends StatefulWidget {
  const FavoriteProduct({super.key});

  @override
  State<FavoriteProduct> createState() => _FavoriteProduct();
}

class _FavoriteProduct extends State<FavoriteProduct> {
  bool isFavorite = false;

  void _onIconClick() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _onIconClick,
      child: Container(
        height: 32,
        width: 32,
        decoration: BoxDecoration(
          color: AppColors.likeBackground,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          isFavorite
              ? FlowerAppIcons.icFavoriteFilled
              : FlowerAppIcons.icFavorite,
          size: 20,
          color: AppColors.mainLightGreen,
        ),
      ),
    );
  }
}
