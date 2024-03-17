import 'package:flutter/material.dart';
import 'package:lilar_test_app/assets_provider/colors.dart';
import 'package:lilar_test_app/ui/navigationbar/bottom_nav_bar.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Профиль'),
      ),
      bottomNavigationBar: const BottomNavBar(),
      backgroundColor: AppColors.color15,
    );
  }
}
