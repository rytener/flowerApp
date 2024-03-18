import 'package:flutter/material.dart';
import 'package:lilar_test_app/assets_provider/strings.dart';
import 'package:lilar_test_app/assets_provider/text_styles.dart';
import '../assets_provider/colors.dart';
import '../assets_provider/icons.dart';
import '../ui/navigation_bar/bottom_nav_bar.dart';

class ShopingBagPage extends StatelessWidget {
  const ShopingBagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: const Text(AppStrings.shopBagLabel,style: AppTextStyles.appBarLabels,),
      ),
      bottomNavigationBar: BottomNavBar(shopBagIcon: FlowerAppIcons.icShoppingBagFilled,shopBagSelected: true,),
      backgroundColor: AppColors.color15,
    );
  }
}
