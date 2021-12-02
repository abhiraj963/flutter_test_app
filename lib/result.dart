import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetHandler;
  Result(this.totalScore, this.resetHandler);

  String get resultPhrase {
    String resultPhrase;
    if (totalScore < 33) {
      resultPhrase = 'Yo';
    } else {
      resultPhrase = 'Po';
    }
    return resultPhrase;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36),
          textAlign: TextAlign.center,
        ),
        TextButton(
          onPressed: resetHandler,
          child: Text(
            'Restart Quiz',
          ),
        )
      ]),
    );
  }
}
