import 'dart:async';
import 'package:flutter/material.dart';
import 'autorization_screen.dart';
import 'package:lilar_test_app/assets_provider/images.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LoginPage(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints:  const BoxConstraints.expand(height: double.infinity),
          child: const Image(
            image: AssetImage(AppImages.splash),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
