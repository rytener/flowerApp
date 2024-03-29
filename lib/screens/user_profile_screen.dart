import 'package:flutter/material.dart';
import '../assets_provider/colors.dart';
import '../assets_provider/icons.dart';
import '../assets_provider/strings.dart';
import '../assets_provider/text_styles.dart';
import '../ui/navigation_bar/bottom_nav_bar.dart';
import '../ui/user_profile_screen_ui/profile_text_containers.dart';

class UserProfilePageState extends StatelessWidget {
  const UserProfilePageState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(AppStrings.profileLabel,
            style: AppTextStyles.appBarLabels),
      ),
      bottomNavigationBar: const BottomNavBar(
        profileIcon: FlowerAppIcons.icProfileFilled,
        profileSelected: true,
      ),
      backgroundColor: AppColors.color15,
      body: const Column(
        children: [
          ProfileContainer(text: AppStrings.profileFirstContainer),
          ProfileContainer(text: AppStrings.profileSecondContainer),
          ProfileContainer(text: AppStrings.profileThirdContainer),
          ProfileContainer(text: AppStrings.profileFourthContainer),
          ProfileContainer(text: AppStrings.profileFifthContainer),
        ],
      ),
    );
  }
}
