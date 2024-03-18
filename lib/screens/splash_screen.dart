import 'dart:async';
import 'package:flutter/material.dart';
import 'autorization_screen.dart';
import '../assets_provider/images.dart';
class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPage();
}

class _SplashScreenPage extends State<SplashScreenPage> {
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
