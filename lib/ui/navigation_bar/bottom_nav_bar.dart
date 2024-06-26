import 'package:flutter/material.dart';
import 'package:lilar_test_app/assets_provider/colors.dart';
import 'package:lilar_test_app/assets_provider/text_styles.dart';
import 'package:lilar_test_app/screens/favourites_screen.dart';
import 'package:lilar_test_app/screens/home_screen.dart';
import 'package:lilar_test_app/screens/shopping_bag_screen.dart';
import 'package:lilar_test_app/screens/user_profile_screen.dart';

import '../../assets_provider/icons.dart';
import '../../assets_provider/strings.dart';

final class BottomNavBar extends StatelessWidget {
  final IconData homeIcon;
  final IconData shopBagIcon;
  final IconData favoriteIcon;
  final IconData profileIcon;
  final bool homeSelected;
  final bool shopBagSelected;
  final bool favoriteSelected;
  final bool profileSelected;

  const BottomNavBar(
      {this.homeIcon = FlowerAppIcons.icHome,
      this.shopBagIcon = FlowerAppIcons.icShoppingBag,
      this.favoriteIcon = FlowerAppIcons.icFavorite,
      this.profileIcon = FlowerAppIcons.icProfile,
      this.homeSelected = false,
      this.shopBagSelected = false,
      this.favoriteSelected = false,
      this.profileSelected = false,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 70,
          child: Row(
            children: [
              NavigationButton(
                icon: homeIcon,
                label: AppStrings.homeLabel,
                screen: const HomePageState(),
                isSelected: homeSelected,
              ),
              NavigationButton(
                icon: shopBagIcon,
                label: AppStrings.shopBagLabel,
                screen: const ShoppingBagPageState(),
                isSelected: shopBagSelected,
              ),
              NavigationButton(
                icon: favoriteIcon,
                label: AppStrings.favoriteLabel,
                screen: const FavouritesPageState(),
                isSelected: favoriteSelected,
              ),
              NavigationButton(
                icon: profileIcon,
                label: AppStrings.profileLabel,
                screen: const UserProfilePageState(),
                isSelected: profileSelected,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

final class NavigationButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final dynamic screen;
  final bool? isSelected;

  const NavigationButton(
      {required this.icon,
      required this.label,
      required this.screen,
      this.isSelected,
      super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
          PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => screen,
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          ),
        );
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Container(
              decoration: const BoxDecoration(color: AppColors.color15),
              height: 50,
              width: 98,
              child: Column(
                children: [
                  if (isSelected == true)
                    Icon(
                      icon,
                      color: AppColors.mainLightGreen,
                    ),
                  if (isSelected == false)
                    Icon(icon, color: AppColors.greyText),
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
