import 'package:flutter/material.dart';
import 'package:lilar_test_app/assets_provider/colors.dart';
import 'package:lilar_test_app/ui/navigationbar/bottom_nav_bar.dart';

class FavouritesPage extends StatelessWidget{
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: const Text('Избранное'),),bottomNavigationBar: const BottomNavBar(),backgroundColor: AppColors.color15,);
  }
}