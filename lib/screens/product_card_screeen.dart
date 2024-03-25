import 'package:flutter/material.dart';

class ProductCardPageState extends StatelessWidget {
  const ProductCardPageState({super.key});

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
