import 'package:flutter/material.dart';
import 'product_card_screeen.dart';
import 'content/app_texts.dart' as AppText;
import 'home_screen.dart';
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText.Tappbar,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppText.Twelcome,
              const SizedBox(height: 20.0),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixText: '+7 ',
                  prefixStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: .0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen()));
                },
                child: const Text('Войти'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
