import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lilar_test_app/screens/components.dart';
import 'autorization_screen.dart';
import 'strings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 140,
        backgroundColor: Colors.white,
        shadowColor: AppColor.appBarShadow,
        elevation: 0.2,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppBarContainers(
                    sizeHeight: 48,
                    sizeWidth: 286,
                    radius: 16,
                    containerColor: AppColor.color6),
                Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: AppBarContainers(
                    sizeHeight: 48,
                    sizeWidth: 48,
                    radius: 12,
                    containerColor: AppColor.color3,
                    containerIcon: Icons.percent_outlined,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  AppBarContainers(
                      sizeHeight: 40,
                      sizeWidth: 88,
                      radius: 16,
                      containerColor: AppColor.buttonShadow),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: AppBarContainers(
                        sizeHeight: 40,
                        sizeWidth: 110,
                        radius: 16,
                        containerColor: AppColor.buttonShadow),
                  ),
                  AppBarContainers(
                      sizeHeight: 40,
                      sizeWidth: 128,
                      radius: 16,
                      containerColor: AppColor.buttonShadow),
                ],
              ),
            )
          ],
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}

class AppBarContainers extends StatelessWidget {
  final double sizeHeight;
  final double sizeWidth;
  final double radius;
  final containerColor;
  final containerIcon;
  final String? text;

  const AppBarContainers(
      {required this.sizeHeight,
      required this.sizeWidth,
      required this.radius,
      required this.containerColor,
      this.containerIcon,
      this.text,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: sizeHeight,
      width: sizeWidth,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(radius),
      ),
      child: Icon(containerIcon),
    );
  }
}
