import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

}

class MyAppState extends State {
var questIndex = 0;
void answerQuestion() {
  questIndex++;
  print("Answer chosen");
}

  @override
  Widget build(BuildContext context) {

    var questions = [
      "What's your favorite color?",
      "What's your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        body: Column(children: [
          Text(questions[questIndex]),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: () => print("answer 2 chosen"),
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: answerQuestion,
          ),
        ]),
      ),
    );
  }
}
