import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.teal,
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("images/playstore.png"),
                ),
                const Text(
                  "Vaibhav Paliwal",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontFamily: "Pacifico"),
                ),
                const Text(
                  "FLUTTER DEVELOPER",
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: "SourceSans",
                      color: Colors.white),
                ),
                SizedBox(
                  height: 20,
                  width: 150,
                  child: Divider(
                    color: Colors.teal[100],
                  ),
                ),
                const Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      size: 24,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "+91 9999000888",
                      style: TextStyle(fontSize: 20, color: Colors.teal),
                    ),
                  ),
                ),
                const Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      size: 24,
                      color: Colors.teal,
                    ),
                    title: Text(
                      "vaibhavpaliwal@gmail.com",
                      style: TextStyle(fontSize: 20, color: Colors.teal),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
