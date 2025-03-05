import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  const Color beginColor = Colors.red;
  const Color endColor = Colors.green;
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(beginColor: beginColor, endColor: endColor),
      ),
    ),
  );
}
