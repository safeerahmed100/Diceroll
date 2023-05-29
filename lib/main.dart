import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text('-Simple Dice Roller-'),
        backgroundColor: Colors.pink[300],
      ),
      body: dice(),
    ),
  ));
}

class dice extends StatefulWidget {
  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  var leftDiceVal = 1;
  var rightDiceVal = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceVal = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$leftDiceVal.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceVal = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset('images/dice$rightDiceVal.png'),
            ),
          ),
        ],
      ),
    );
  }
}
