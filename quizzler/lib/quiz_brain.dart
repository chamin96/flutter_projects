import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Questions> _questionBank = [
    Questions(q: 'There are 219 episodes of Friends.', a: false),
    Questions(q: 'In Harry Potter, Draco Malfoy has no siblings.', a: false),
    Questions(q: 'Cinderella was the first Disney princess', a: false),
    Questions(
        q: 'The Great Wall of China is longer than the distance between London and Beijing.',
        a: true),
    Questions(q: 'The unicorn is the national animal of Scotland.', a: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questionBank[_questionNumber].question;
  }

  bool getAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished() {
    return _questionNumber == _questionBank.length - 1 ? true : false;
  }

  void reset() {
    _questionNumber = -1;
  }
}
