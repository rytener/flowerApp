import 'package:flutter/material.dart';

import 'base_button.dart';

class TextBaseButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final String buttonText;
  final String? subtitle;

  const TextBaseButton({
    required this.title,
    required this.buttonText,
    required this.onPressed,
    this.subtitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      title: title,
      subtitle: subtitle,
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              buttonText,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: const TextStyle(
                fontFamily: 'Lato-Bold',
                fontWeight: FontWeight.w700,
                fontSize: 15.0,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
