import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(height: double.infinity),
          child: Image(
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