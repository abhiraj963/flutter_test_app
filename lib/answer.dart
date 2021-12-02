import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback questionIncrement;
  final String answer;
  Answer(this.questionIncrement, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        child: Text(answer),
        onPressed: questionIncrement,
      ),
    );
  }
}
