import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
void main() => runApp(const FlowersApp());

class FlowersApp extends StatelessWidget {
  const FlowersApp({super.key});


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner:false,
      home:SplashScreenPage(),
    );
  }
}
