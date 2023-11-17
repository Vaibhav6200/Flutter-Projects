import 'package:flutter/material.dart';

// CUSTOM ROUND BUTTON
class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});
  final void Function()? onPressed;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 6,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
    );
  }
}
