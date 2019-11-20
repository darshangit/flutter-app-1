import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectionHandler;
  final String answerText;

  Answer(this.selectionHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueGrey,
        textColor: Colors.cyanAccent,
        child: Text(answerText),
        onPressed: selectionHandler,
      ),
    );
  }
}
