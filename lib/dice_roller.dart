import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 2;

  void rollDice() {
    // var diceRoll = Random().nextInt(6) + 1;
    setState(() { 
      currentDiceRoll = randomizer.nextInt(6) + 1;
  });
  }
  
  @override
  Widget build(context) {
    return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/dice-$currentDiceRoll.png', 
                  width: 200,
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: rollDice, 
                style: TextButton.styleFrom(
                  // padding: EdgeInsets.only(top:20,),
                  // padding: EdgeInsets.all(40),
                  foregroundColor: const Color.fromARGB(255, 28, 2, 2),
                  textStyle: TextStyle(
                      fontSize: 28,
                  ) ),
                child: const Text('Roll Dice')
                 ),
            ],
          );
  }
  
}