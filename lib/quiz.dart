import 'package:flutter/material.dart';
import 'package:flutter_app_1/question.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  Quiz(
      {@required this.questions,
      @required this.answerQuestion,
      @required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questions[this.questionIndex]['questionText']),
      ...(this.questions[this.questionIndex]['answers'] as List<String>)
          .map((answer) {
        return Answer(this.answerQuestion, answer);
      }).toList()
    ]);
  }
}
