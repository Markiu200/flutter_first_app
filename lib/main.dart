import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Scaffold(body: GradientContainer())));
}

class Customer {
  final String name;
  final int age;
  final String location;

  // constructor
  const Customer(String n, int a, String l) : name = n, age = a, location = l;
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.deepPurple, Colors.purpleAccent],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Text(
          'Smok Kasmok is white and evil',
          style: TextStyle(color: Colors.white, fontSize: 28),
        ),
      ),
    );
  }
}
