import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Ask Me Anything")),
      ),
      body: const SafeArea(
        child: BallPage(),
      ),
    ),
  ));
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ball_number = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            child: Image.asset("images/ball$ball_number.png"),
            onPressed: () {
              setState(() {
                ball_number = Random().nextInt(5) + 1;
              });
            },
          ),
        ],
      ),
    );
  }
}
