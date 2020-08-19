import 'package:flutter/material.dart';
import 'package:learn_flutter/answer.dart';
import 'package:learn_flutter/question.dart';

void main() => runApp(MyAwesomeApp());

class MyAwesomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAwesomeAppState();
  }
}

class _MyAwesomeAppState extends State {
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print("Answer click");
  }

  @override
  Widget build(BuildContext context) {
//    List<String> list = ["aaaaaaa", "bbbbbbbbbbbbb"];
    var questions = [
      {
        'questionText': 'What is your favorite color?',
        'answer': ['Red', 'Blue', 'White', 'Black']
      },
      {
        'questionText': 'What is your favorite color?',
        'answer': ['Red', 'Blue', 'White', 'Black']
      },
      {
        'questionText': 'What is your favorite color?',
        'answer': ['Red', 'Blue', 'White', 'Black']
      },
      {
        'questionText': 'What is your favorite color?',
        'answer': ['Red', 'Blue', 'White', 'Black']
      }
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Aweso meApp"),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answer'] as List<String>)
                .map((e) => Answer(e, answerQuestion))
          ],
        ),
      ),
    );
  }
}
