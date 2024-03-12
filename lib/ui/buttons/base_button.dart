import 'package:flutter/material.dart';

import '../../assets_provider/colors.dart';

class BaseButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String? subtitle;
  final bool useBoldTittle;
  final Widget? child;

  const BaseButton({
    required this.title,
    required this.onPressed,
    this.useBoldTittle = true,
    this.subtitle,
    this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: AppColors.buttonShadow,
              spreadRadius: 0,
              blurRadius: 24,
              offset: Offset(4, 8),
            ),
          ],
          color: AppColors.mainLightGreen,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      title,
                      style: useBoldTittle
                          ? const TextStyle(
                              fontFamily: 'Lato-Bold',
                              fontWeight: FontWeight.w800,
                              fontSize: 17.0,
                              color: Colors.white,
                            )
                          : const TextStyle(
                              fontFamily: 'Lato-Bold',
                              fontWeight: FontWeight.w700,
                              fontSize: 15.0,
                              color: Colors.white,
                            ),
                    ),
                  ),
                  if (subtitle != null)
                    Text(
                      subtitle!,
                      style: const TextStyle(
                        fontFamily: 'Lato-Bold',
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                        color: AppColors.likeBackground,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: AppColors.likeBackground,
                      ),
                    ),
                ],
              ),
              if (child != null) ...[
                const Spacer(),
                DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: child,
                )
              ],
            ],
          ),
        ),
      ),
    );
  }
}
