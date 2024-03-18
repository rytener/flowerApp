import 'package:flutter/material.dart';
import 'package:lilar_test_app/assets_provider/colors.dart';
import 'package:lilar_test_app/assets_provider/icons.dart';
import 'package:lilar_test_app/assets_provider/text_styles.dart';

class ProfileContainer extends StatelessWidget {
  final String text;

  const ProfileContainer({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.color6,
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: AppTextStyles.userProfileContainerText,
                    ),const Icon(FlowerAppIcons.icNext,color: AppColors.greyText,)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
