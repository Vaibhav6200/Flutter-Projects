import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/results_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF010409),
        ),
        scaffoldBackgroundColor: Color(0xFF010409),
      ),
      // home: InputPage(),
      initialRoute: "/",
      routes: {
        '/': (context) => InputPage(),
      },
    );
  }
}
