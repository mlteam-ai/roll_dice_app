import 'package:flutter/material.dart';
import 'dart:math'; // Add this line to import 'dart:math' library

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-1.png';
  void rollDice() {
    setState(() {
      activeDiceImage = 'assets/images/dice-${randomizer.nextInt(6) + 1}.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(activeDiceImage, width: 200, height: 200),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 31, 31, 226),
              padding: const EdgeInsets.only(top: 20.0),
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice'))
      ],
    );
  }
}
