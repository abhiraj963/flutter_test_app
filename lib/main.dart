import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQues(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    _totalScore += score;
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  final questionList = const [
    {
      'question': 'question1 - Text',
      'answers': [
        {'text': 'answer11', 'score': 11},
        {'text': 'answer12', 'score': 12},
      ],
    },
    {
      'question': 'question2 - Text',
      'answers': [
        {'text': 'answer21', 'score': 21},
        {'text': 'answer22', 'score': 22},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('App'),
        ),
        body: _questionIndex < questionList.length
            ? Quiz(
                answerQues: _answerQues,
                questionList: questionList,
                questionIndex: _questionIndex,
              )
            : Result(
                _totalScore,
                _resetQuiz,
              ),
      ),
    );
  }
}
