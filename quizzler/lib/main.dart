import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quizzler',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Icon> scoreKeeper = [];
  int correctAnswers = 0;

  void checkAnswer(bool userPickedAnswer) {
    setState(() {
      if (quizBrain.getAnswer() == userPickedAnswer) {
        scoreKeeper.add(Icon(
          Icons.check,
          size: 18.0,
          color: Colors.pinkAccent,
        ));
        correctAnswers++;
      } else {
        scoreKeeper.add(Icon(
          Icons.close,
          size: 18.0,
          color: Colors.grey,
        ));
      }
      if (quizBrain.isFinished()) {
        showAlert();
        quizBrain.reset();
        scoreKeeper.clear();
      }
      quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    quizBrain.getQuestion(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 24.0,
                    ),
                  ),
                ),
              ),
            ), // Question
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 24.0, horizontal: 54.0),
                child: FlatButton(
                  onPressed: () {
                    checkAnswer(true);
                  },
                  color: Colors.greenAccent,
                  child: Text(
                    'True',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ),
            ), // True
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 24.0, horizontal: 54.0),
                child: FlatButton(
                  onPressed: () {
                    checkAnswer(false);
                  },
                  color: Colors.redAccent,
                  child: Text(
                    'False',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                    ),
                  ),
                ),
              ),
            ), // False
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 36.0, vertical: 0.0),
                    child: Divider(
                      color: Colors.pinkAccent,
                      thickness: 2.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: scoreKeeper,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showAlert() {
    final alertStyle = AlertStyle(
      animationType: AnimationType.shrink,
      isCloseButton: false,
      isOverlayTapDismiss: false,
      overlayColor: Colors.black87,
      backgroundColor: Colors.black54,
      descStyle: TextStyle(
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
      descTextAlign: TextAlign.center,
      animationDuration: Duration(milliseconds: 600),
      alertBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(
          color: Colors.pinkAccent,
        ),
      ),
      titleStyle: TextStyle(
        color: Colors.pinkAccent,
      ),
      alertAlignment: Alignment.center,
    );

    Alert(
      context: context,
      style: alertStyle,
      title: "Yay!",
      desc: "Quiz is over.",
      content: Text(
        'Score: $correctAnswers/${scoreKeeper.length}',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
        ),
      ),
      buttons: [
        DialogButton(
          child: Text(
            "okay",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          onPressed: () {
            correctAnswers = 0;
            Navigator.pop(context);
          },
          width: 120,
        )
      ],
    ).show();
  }
}

/*
* 1. There are 219 episodes of Friends. , false
* 2. In Harry Potter, Draco Malfoy has no siblings. , false
* 3. Cinderella was the first Disney princess. , false
* 4. The Great Wall of China is longer than the distance between London and Beijing. , true
* 5. The unicorn is the national animal of Scotland. , true
* */
