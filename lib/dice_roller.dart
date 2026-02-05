import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage = 'assets/images/dice-2.png';
    void rollDice() {
      var randomizer = Random();
      var roll = randomizer.nextInt(6) + 1;
      setState((){
        activeDiceImage = 'assets/images/dice-$roll.png';
      });
    }
  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(activeDiceImage, width: 200),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 40,
                ),
                foregroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 28),
              ),
              child: Text("Roll the Dice"),
            ),
          ],
        );
  }
}