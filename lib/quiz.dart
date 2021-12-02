import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questionList;
  final int questionIndex;
  final void Function(int) answerQues;

  Quiz({
    required this.questionList,
    required this.answerQues,
    required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(
          questionList[questionIndex]['question'] as String,
        ),
        ...(questionList[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQues(answer['score'] as int),
              answer['text'] as String);
        }).toList(),
      ],
    );
  }
}
