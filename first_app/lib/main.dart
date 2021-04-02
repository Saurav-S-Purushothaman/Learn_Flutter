import 'package:flutter/material.dart';

//import './question.dart';
//import './answer.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  var _questions = [
    {
      "questionText": "Whats your favorite animal?",
      "answerText": [
        {'text': "Monkey", 'score': 5},
        {'text': "Cat", 'score': 6},
        {'text': "Dog", 'score': 3},
      ]
    },
    {
      "questionText": "Whats your favorite character in friends?",
      "answerText": [
        {'text': "Phoebee", 'score': 10},
        {'text': "Monika", 'score': 1},
        {'text': "Chandler", 'score': 7},
        {'text': "Joey", 'score': 7}
      ]
    },
  ];

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore += score;
    });

    print(_questionIndex);
  }

  void _restart() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black12,
        appBar: AppBar(
            title: Text(
              "My First App",
              style: TextStyle(color: Colors.black87),
            ),
            backgroundColor: Colors.white),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(_totalScore, _restart),
      ),
    );
  }
}
