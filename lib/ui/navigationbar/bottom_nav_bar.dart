import 'package:flutter/material.dart';
import 'package:lilar_test_app/assetsprovider/icons.dart';
import 'package:lilar_test_app/assetsprovider/strings.dart';

class BottomNavBar extends StatelessWidget {


  const BottomNavBar(
      {
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 74,
          color: Colors.black12,
          child: Row(
            children: [
              NavigationButton(icon: FlowerAppIcons.ic_home, label: AppStrings.firstLabel),
              NavigationButton(icon: FlowerAppIcons.ic_shopping_bag, label: AppStrings.secondLabel),
              NavigationButton(icon: FlowerAppIcons.ic_favorite, label: AppStrings.thirdLabel),
              NavigationButton(icon: FlowerAppIcons.ic_profile, label: AppStrings.fourthLabel),
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

  const NavigationButton({required this.icon, required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        children: [
          Container(
            height: 50,
            width: 98,
            child: Icon(icon),
          ),
          Text(label),
        ],
      ),
    );
  }
}
