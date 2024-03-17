import 'package:flutter/material.dart';

class ProductCardPage extends StatelessWidget {
  const ProductCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: const BoxConstraints.expand(height: double.infinity),

        ),
      ),
    );
  }
}
