import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Xylophone"),
      ),
      body: const SafeArea(
        child: MyApp(),
      ),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int noteNumber = 1;
  final player = AudioPlayer();

  Expanded addButton(String note, Color buttonColor) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(padding: const EdgeInsets.all(0)),
        onPressed: () {
          player.play(AssetSource(note));
        },
        child: Container(
          height: double.infinity,
          color: buttonColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        addButton("note1.wav", Colors.red),
        addButton("note2.wav", Colors.orange),
        addButton("note3.wav", Colors.yellow),
        addButton("note4.wav", Colors.green),
        addButton("note5.wav", Colors.teal),
        addButton("note6.wav", Colors.blue),
        addButton("note7.wav", Colors.purple),
      ],
    );
  }
}
