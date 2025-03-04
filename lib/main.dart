import 'package:flutter/material.dart';

void main() {
  const String name = 'smok';
  final String color = 'white';
  const lastName = 'Kasmok';
  final alignment = 'evil';
  // https://api.flutter.dev/flutter/widgets/Text-class.html
  // https://api.flutter.dev/flutter/dart-core/String-class.html
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.deepPurple, Colors.purpleAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Text(
              '$name $lastName is $color and $alignment',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
        ),
      ),
    ),
  );
}
