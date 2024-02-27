import 'package:flutter/material.dart';
import 'package:lilar_test_app/screens/components.dart';

class FirstButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Text text;

  const FirstButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: AppColor.buttonShadow,
                spreadRadius: 0,
                blurRadius: 24,
                offset: Offset(4, 8),
              ),
            ],
            color: AppColor.mainLightGreen,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 16.0,
                  ),
                  child: text),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondButton extends StatelessWidget {
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final VoidCallback onPressed;
  final Text text;
  final int initialCount; // Initial count value (default: 0)
  final int minimumCount; // Minimum allowed count (default: -10)
  final int maximumCount; // Maximum allowed count (default: 10)

  const SecondButton({
    Key? key,
    required this.onIncrement,
    required this.onDecrement,
    required this.onPressed,
    required this.text,
    this.initialCount = 1,
    this.minimumCount = 1,
    this.maximumCount = 10,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _count = ValueNotifier<int>(initialCount);

    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: AppColor.buttonShadow,
                spreadRadius: 0,
                blurRadius: 24,
                offset: Offset(4, 8),
              ),
            ],
            color: AppColor.mainLightGreen,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 22.0,
                      horizontal: 16.0,
                    ),
                    child: text,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 118),
                    child: Material(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 4.0),
                                child: Container(height: 38.0,width: 38.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: AppColor.color3),
                                  child: IconButton(
                                    icon: Icon(Icons.add,color: Colors.white,),
                                    onPressed: () {
                                      if (_count.value < maximumCount) {
                                        _count.value++;
                                        onIncrement();
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Center(
                                child: ValueListenableBuilder<int>(
                                  valueListenable: _count,
                                  builder: (_, count, __) => Text(
                                    '$count',
                                    style: const TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 4.0),
                                child: Container(height: 38.0,width: 38.0,decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: AppColor.color3),
                                  child: IconButton(
                                    icon: Icon(Icons.remove,color: Colors.white,),
                                    onPressed: () {
                                      if (_count.value > minimumCount) {
                                        _count.value--;
                                        onDecrement();
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ThirdButton extends StatelessWidget {
  final VoidCallback onPressed;
  final VoidCallback onPressed2;
  final Text text;
  final Text minitext;

  const ThirdButton({
    required this.onPressed,
    required this.onPressed2,
    required this.text,
    required this.minitext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: AppColor.buttonShadow,
                spreadRadius: 0,
                blurRadius: 24,
                offset: Offset(4, 8),
              ),
            ],
            color: AppColor.mainLightGreen,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 22.0,
                      horizontal: 16.0,
                    ),
                    child: text,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 44.0),
                    child: Material(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: InkWell(
                        onTap: onPressed2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 32.0,
                              vertical: 12.0,
                            ),
                            child: minitext,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
