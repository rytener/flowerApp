import 'package:flutter/material.dart';
import 'package:lilar_test_app/screens/home_screen.dart';

import '../ui/buttons/base_button.dart';
import '../ui/buttons/counter_button.dart';
import '../ui/buttons/text_base_button.dart';
import 'buttons/buttons.dart';
import 'product_card_screeen.dart';
import 'strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        title: AppStrings.autharization,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppStrings.welcome,
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
                text: AppStrings.productCost,
                onDecrement: () {},
                onIncrement: () {},
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
                onPressed2: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeScreen(),
                    ),
                  );
                },
                text: AppStrings.thirdButton,
                minitext: AppStrings.autharization,
              ),
              const SizedBox(height: 20),
              BaseButton(
                title: '35 000 p.',
                subtitle: '35 000 p.',
                useBoldTittle: false,
                onPressed: () {},
              ),
              const SizedBox(height: 20),
              TextBaseButton(
                title: '35 000 p.',
                subtitle: '70 000 p.',
                onPressed: () {},
                buttonText: 'Оформить заказ',
              ),
              const SizedBox(height: 20),
              CounterButton(
                title: '35 000 p.',
                subtitle: '35 000 p.',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
