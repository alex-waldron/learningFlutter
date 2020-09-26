import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questIndex = 0;
  final questions = const[
    {
      "question": "What's your favorite color?",
      "answers": ["black", "blue", "red"]
    },
    {
      "question": "What's your favorite animal?",
      "answers": ["lion", "tiger", "bear"]
    },
    {
      "question": "What's your least favorite smell",
      "answers": ["poop", "fart", "burp"]
    },
  ];
  void _answerQuestion() {
    setState(() {
      if (_questIndex == questions.length - 1) {
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
            questions[_questIndex]["question"],
          ),
          ...(questions[_questIndex]['answers'] as List<String>).map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
