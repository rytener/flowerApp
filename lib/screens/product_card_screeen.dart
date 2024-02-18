import 'package:flutter/material.dart';
import 'package:lilar_test_app/screens/buttons/buttons.dart';
import 'autorization_screen.dart';
import 'strings.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          constraints: BoxConstraints.expand(height: double.infinity),
          child: FirstButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (BuildContext context) => LoginPage(),
                ),
              );
            },
            text: AppStrings.firstButton,
          ),
        ),
      ),
    );
  }
}
