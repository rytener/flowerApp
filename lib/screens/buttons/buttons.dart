import 'package:flutter/material.dart';
import 'package:lilar_test_app/screens/components.dart';

class FirstButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Text text;

  const FirstButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: AppColor.buttonShadow,
                spreadRadius: 0,
                blurRadius: 24,
                offset: Offset(4, 8),
              ),
            ],
            color: AppColor.mainLightGreen,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 16.0,
                  ),
                  child: text),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Text text;

  const SecondButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: AppColor.buttonShadow,
                spreadRadius: 0,
                blurRadius: 24,
                offset: Offset(4, 8),
              ),
            ],
            color: AppColor.mainLightGreen,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 16.0,
                  ),
                  child: text),
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdButton extends StatelessWidget {
  final VoidCallback onPressed;
  final VoidCallback onPressed2;
  final Text text;
  final Text minitext;

  const ThirdButton({
    required this.onPressed,
    required this.onPressed2,
    required this.text,
    required this.minitext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: AppColor.buttonShadow,
                spreadRadius: 0,
                blurRadius: 24,
                offset: Offset(4, 8),
              ),
            ],
            color: AppColor.mainLightGreen,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 22.0,
                      horizontal: 16.0,
                    ),
                    child: text,
                  ),
                   Padding(padding: const EdgeInsets.only(left: 44.0),
                     child: Material(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: InkWell(
                          onTap: onPressed2,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 32.0,
                                vertical: 12.0,
                              ),
                              child: minitext,
                            ),
                          ),
                        ),
                      ),
                   ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
