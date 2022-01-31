import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;

    if (resultScore <= 50) {
      resultText = "You are soo bad!";
    } else if (resultScore <= 80) {
      resultText = "Much better!";
    } else {
      resultText = "You are the best!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetQuiz,
            child: Text(
              "Restart",
              style: TextStyle(fontSize: 24),
            ),
            textColor: Colors.green,
          )
        ],
      ),
    );
  }
}
