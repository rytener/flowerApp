import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lilar_test_app/ui/buttons/base_button.dart';

import '../../screens/components.dart';

class CounterButton extends StatefulWidget {
  final String title;
  final VoidCallback onPressed;
  final String? subtitle;

  const CounterButton({
    required this.title,
    required this.onPressed,
    this.subtitle,
    super.key,
  });

  @override
  State<StatefulWidget> createState() => CounterButtonState();
}

class CounterButtonState extends State<CounterButton> {
  static const _minValue = 1;

  int counter = _minValue;

  void _add() {
    setState(() {
      counter++;
    });
  }

  void _remove() {
    setState(() {
      counter = max(_minValue, --counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseButton(
      title: widget.title,
      subtitle: widget.subtitle,
      onPressed: widget.onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _IconContainer(
              Icons.add,
              _add,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Text(
                counter.toString(),
                style: const TextStyle(
                  fontFamily: 'Lato-Bold',
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0,
                  color: Colors.black,
                ),
              ),
            ),
            _IconContainer(
              Icons.remove,
              _remove,
            ),
          ],
        ),
      ),
    );
  }
}

class _IconContainer extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _IconContainer(
    this.icon,
    this.onTap,
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: AppColor.color3,
        ),
        child: Icon(
          icon,
          size: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
