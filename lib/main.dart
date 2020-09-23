import 'package:flutter/material.dart';

import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questIndex = 0;
  var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
      "What's your least favorite smell",
    ];
  void _answerQuestion() {
    setState(() {
      
      if (_questIndex == questions.length-1) {
        _questIndex = 0;
      } else {
        _questIndex++;
      }
    });
    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Question(
            questions[_questIndex],
          ),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: _answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: _answerQuestion,
          ),
        ]),
      ),
    );
  }
}
