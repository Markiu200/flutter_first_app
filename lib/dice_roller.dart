import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  // For now it's jump of faith - you split stateful widget into two classes.
  // Public class will be defined that way, calling createState() and returning
  // object of _DiceRollerState, which in turn contains whole definition of
  // wanted widget.
  const DiceRoller({super.key});

  @override
  //State is generic type
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  String img = 'assets/images/dice-1.png';

  void rollTheDice() {
    // This is what calls for rebuild of a widget. Change it's state here.
    int diceRoll = Random().nextInt(6) + 1;
    setState(() {
      img = 'assets/images/dice-$diceRoll.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(img),
        TextButton(
          onPressed: rollTheDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text("Roll"),
        ),
      ],
    );
  }
}
