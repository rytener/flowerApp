import 'package:flutter/material.dart';
import 'package:lilar_test_app/assets_provider/colors.dart';
import 'package:lilar_test_app/assets_provider/text_styles.dart';
import 'package:lilar_test_app/screens/home_screen.dart';
import 'package:lilar_test_app/screens/shoping_bag_screen.dart';

import '../../assets_provider/icons.dart';
import '../../assets_provider/strings.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 70,
          child: const Row(
            children: [
              NavigationButton(
                icon: FlowerAppIcons.icHome,
                label: AppStrings.firstLabel,
              ),
              NavigationButton(
                icon: FlowerAppIcons.icShoppingBag,
                label: AppStrings.secondLabel,
              ),
              NavigationButton(
                icon: FlowerAppIcons.icFavorite,
                label: AppStrings.thirdLabel,
              ),
              NavigationButton(
                icon: FlowerAppIcons.icProfile,
                label: AppStrings.fourthLabel,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NavigationButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final screen;

  const NavigationButton(
      {required this.icon, required this.label, this.screen, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => const ShopingBagPage(),
          ),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
              decoration: BoxDecoration(color: AppColors.color15),
              height: 50,
              width: 98,
              child: Column(
                children: [
                  Icon(icon,color: AppColors.greyText,),
                  Text(
                    label,
                    style: AppTextStyles.bottomNavBarText,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
