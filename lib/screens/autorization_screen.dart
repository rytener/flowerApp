import 'buttons/buttons.dart';
import 'package:flutter/material.dart';
import 'strings.dart';
import 'components.dart';
import 'product_card_screeen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        title: const Text(
          AppStrings.autharization,
          style: MyTextStyles.standart,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                AppStrings.welcome,
                style: MyTextStyles.standart,
              ),
              const SizedBox(height: 20.0),
              const TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixText: '+7 ',
                  prefixStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              FirstButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductCard(),
                    ),
                  );
                },
                text: AppStrings.firstButton,
              ),
              const SizedBox(height: 20.0),
              SecondButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductCard(),
                    ),
                  );
                },
                text: AppStrings.secondButton,
              ),
              const SizedBox(height: 20.0),
              ThirdButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductCard(),
                    ),
                  );
                },
                text: AppStrings.thirdButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
