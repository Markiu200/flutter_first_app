import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Smok Kasmok is white and evil',
      style: TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
