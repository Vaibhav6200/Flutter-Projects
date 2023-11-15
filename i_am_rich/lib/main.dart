import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("I am Rich"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Image(image: AssetImage("images/tree.jpg")),
        ),
      ),
    ),
  );
}

// void main() {
//   runApp(
//     const MaterialApp(
//       home: Center(
//         child: Text("Hello Vaibhav"),
//       ),
//     ),
//   );
// }
