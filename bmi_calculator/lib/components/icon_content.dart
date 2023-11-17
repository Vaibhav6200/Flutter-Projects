import 'package:flutter/material.dart';
import '../constants.dart';

class IconContent extends StatelessWidget {
  IconData? icon;
  String iconText;
  IconContent({this.icon, required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          iconText,
          style: TextStyle(fontSize: 18, color: kTextColor),
        )
      ],
    );
  }
}
