import 'package:flutter/material.dart';
import 'package:lilar_test_app/assets_provider/strings.dart';
import '../assets_provider/colors.dart';
import '../assets_provider/icons.dart';
import '../ui/navigation_bar/bottom_nav_bar.dart';
import '../assets_provider/text_styles.dart';

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          AppStrings.favoriteLabel,
          style: AppTextStyles.appBarLabels,
        ),
      ),
      bottomNavigationBar: BottomNavBar(
        favoriteIcon: FlowerAppIcons.icFavoriteFilled,
        favoriteSelected: true,
      ),
      backgroundColor: AppColors.color15,
    );
  }
}
