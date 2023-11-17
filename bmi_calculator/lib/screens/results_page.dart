import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'input_page.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmi_text,
      required this.bmi_value,
      required this.bmi_interpretation});

  String bmi_value;
  String bmi_interpretation;
  String bmi_text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("BMI CALCULATOR"),
        ),
      ),
      body: Column(
        children: <Widget>[
          const Text(
            "Your Result",
            style: TextStyle(fontSize: 40),
          ),
          Expanded(
            child: ReusableCard(
              card_color: kInactiveCardColor,
              cardChild: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Center(
                      child: Text(
                        bmi_text,
                        style: kResultTextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        bmi_value,
                        style: kBMITextStyle,
                      ),
                    ),
                    Center(
                      child: Text(
                        bmi_interpretation,
                        style: kBodyTextStyle,
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            buttonText: "RE-CALCULATE",
            onTap: () => {Navigator.pop(context)},
          )
        ],
      ),
    );
  }
}
