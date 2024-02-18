import 'dart:async';
import 'package:flutter/material.dart';
import 'autorization_screen.dart';


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
      const Duration(seconds: 1),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => LoginPage(),
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
            image: AssetImage(
              'assets/images/lilar_splash_screen.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
