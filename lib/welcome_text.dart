import 'package:flutter/material.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: Colors.white, fontSize: 28));
  }
}
