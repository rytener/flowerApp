import 'package:lilar_test_app/assets_provider/colors.dart';
import 'package:lilar_test_app/assets_provider/text_styles.dart';

import '../ui/buttons/base_button.dart';
import '../screens/home_screen.dart';
import '../assets_provider/strings.dart';
import 'package:flutter/material.dart';

class LoginPageState extends StatelessWidget {
  const LoginPageState({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        title: const Text(
          AppStrings.autharization,
          style: AppTextStyles.appBarLabels,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                AppStrings.welcomeTitle,
                style: AppTextStyles.welcomeTitleText,
              ),
              const SizedBox(
                height: 16.0,
              ),
              const Text(
                AppStrings.welcomeSubtitle,
                style: AppTextStyles.welcomeSubtitleText,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 48.0),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.buttonShadow,
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 2, bottom: 4),
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        hintText: AppStrings.loginHint,
                        hintStyle: AppTextStyles.loginHintText,
                        prefixText: '+7',
                        prefixStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(height: 72.0),
              BaseButton(
                title: AppStrings.login,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (_) => const HomePageState(),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
