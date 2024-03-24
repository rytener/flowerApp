import 'dart:async';
import 'package:flutter/material.dart';
import 'autorization_screen.dart';
import '../assets_provider/images.dart';

class SplashScreenPageState extends StatefulWidget {
  const SplashScreenPageState({super.key});

  @override
  State<SplashScreenPageState> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPageState> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const LoginPageState(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(height: double.infinity),
          child: const Image(
            image: AssetImage(AppImages.splash),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
