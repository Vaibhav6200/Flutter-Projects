import 'question.dart';

class quizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [
    Question(q: "You can lead a cow down stairs but not up stairs.", a: false),
    Question(q: "A slug's blood is green.", a: true),
    Question(
        q: "Approximately one quarter of human bones are in the feet.",
        a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) _questionNumber++;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) return true;
    return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
