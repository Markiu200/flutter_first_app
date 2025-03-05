import 'package:flutter/material.dart';

void main() {
  // const added, as MaterialApp, Scaffold, and GradientContainer have
  // const constructors.
  runApp(const MaterialApp(home: Scaffold(body: GradientContainer())));
}

class GradientContainer extends StatelessWidget {
  // const keyword allows making instances of that class const.
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext ContextAction) {
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
