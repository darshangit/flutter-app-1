import 'package:flutter/material.dart';

void main() => runApp(MyApp()); // can use when we have only 1 expression

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Text('This is my default text'),
      ),
    );
  }
}
