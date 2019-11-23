import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText;

    if (resultScore <= 8) {
      resultText = 'You are Awesome and Awesome';
    } else if (resultScore <= 12) {
      resultText = 'Pretty Likable !';
    } else if (resultScore <= 16) {
      resultText = 'Stranger Things';
    } else {
      resultText = ' Burrra';
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
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          onPressed: resetHandler,
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
