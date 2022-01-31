import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      "questionText": "What is your favorite colour?",
      "answers": [
        {"text": "Blue", "score": 20},
        {"text": "White", "score": 30},
        {"text": "Red", "score": 10},
        {"text": "Green", "score": 40},
      ],
    },
    {
      "questionText": "What is your school?",
      "answers": [
        {"text": "Devi", "score": 40},
        {"text": "Royal", "score": 20},
        {"text": "Ananda", "score": 30},
        {"text": "Nalanda", "score": 10},
      ],
    },
    {
      "questionText": "What is your name?",
      "answers": [
        {"text": "Gimhan", "score": 20},
        {"text": "Udu", "score": 10},
        {"text": "Suba", "score": 40},
        {"text": "Ravi", "score": 30},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore,_resetQuiz),
      ),
    );
  }
}
