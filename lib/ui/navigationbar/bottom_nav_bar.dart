import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final IconData firstIcon;
  final IconData secondIcon;
  final IconData thirdIcon;
  final IconData fourthIcon;
  final String firstLabel;
  final String secondLabel;
  final String thirdLabel;
  final String fourthLabel;

  const BottomNavBar(
      {required this.firstIcon,
      required this.firstLabel,
      required this.secondIcon,
      required this.secondLabel,
      required this.thirdIcon,
      required this.thirdLabel,
      required this.fourthIcon,
      required this.fourthLabel,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(height: 74,
          color: Colors.black12,
          child: Row(
            children: [
              InkWell(
                child: Column(
                  children: [
                    Container(height: 50,width: 98,
                      child: Icon(firstIcon),
                    ),
                    Text(firstLabel)
                  ],
                ),
              ),
              InkWell(
                child: Column(
                  children: [
                    Container(height: 50,width: 98,
                      child: Icon(secondIcon),
                    ),
                    Text(secondLabel)
                  ],
                ),
              ),
              InkWell(
                child: Column(
                  children: [
                    Container(height: 50,width: 98,
                      child: Icon(thirdIcon),
                    ),
                    Text(thirdLabel)
                  ],
                ),
              ),
              InkWell(
                child: Column(
                  children: [
                    Container(height: 50,width: 98,
                      child: Icon(fourthIcon),
                    ),
                    Text(fourthLabel)
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
