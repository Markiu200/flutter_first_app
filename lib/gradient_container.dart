import 'package:flutter/material.dart';
import 'package:first_app/welcome_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.beginColor,
    required this.endColor,
  });

  final Color beginColor;
  final Color endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [beginColor, endColor],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            WelcomeText('Smok Kasmok eats soup'),
            Image.asset('assets/images/dice-1.png'),
            TextButton(onPressed: () {}, child: const Text("Roll")),
          ],
        ),
      ),
    );
  }
}
