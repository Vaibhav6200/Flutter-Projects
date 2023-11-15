import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Center(child: Text("Dicee")),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 6;

  void changeState() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$leftDiceNumber.png"),
              onPressed: () {
                changeState();
              },
            ),
          ),
          Expanded(
            child: TextButton(
              child: Image.asset("images/dice$rightDiceNumber.png"),
              onPressed: () {
                changeState();
              },
              style: TextButton.styleFrom(),
            ),
          ),
        ],
      ),
    );
  }
}
