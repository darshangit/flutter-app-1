import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectionHandler;

  Answer(this.selectionHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueGrey,
        textColor: Colors.cyanAccent,
        child: Text('Answer 1'),
        onPressed: selectionHandler,
      ),
    );
  }
}
