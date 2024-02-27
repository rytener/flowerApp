import 'package:flutter/material.dart';
import 'package:lilar_test_app/screens/components.dart';
import 'buttons/buttons.dart';
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
      body: Container(
        child:FirstButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (BuildContext context) => LoginPage(),
              ),
            );
          },
          text: AppStrings.secondButton,
        ),
      ),
    );
  }
}
