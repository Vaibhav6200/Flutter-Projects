import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.card_color, this.cardChild});
  final Color card_color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: card_color,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
