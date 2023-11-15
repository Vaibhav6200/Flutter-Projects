import 'package:flutter/material.dart';
import 'package:quizzler/quizBrain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

quizBrain quiz = quizBrain();

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Center(child: Text("Quizzler")),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        ),
      ),
    ),
  ));
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Widget> scoreKeeper = [];

  Icon getCheckIcon() {
    return const Icon(
      Icons.check,
      color: Colors.green,
    );
  }

  Icon getCrossIcon() {
    return const Icon(
      Icons.close,
      color: Colors.red,
    );
  }

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quiz.getQuestionAnswer();

    setState(() {
      if (quiz.isFinished() == true) {
        Alert(
                context: context,
                title: "Quiz Finished!",
                desc: "You've reached the end of Quiz.")
            .show();
        quiz.reset();
        scoreKeeper.clear();
      } else {
        if (correctAnswer == userPickedAnswer)
          scoreKeeper.add(getCheckIcon());
        else
          scoreKeeper.add(getCrossIcon());

        quiz.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 8,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                quiz.getQuestionText(),
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.green),
            onPressed: () {
              checkAnswer(true);
            },
            child: const Text(
              "True",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {
              checkAnswer(false);
            },
            child: const Text(
              "False",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
