import 'package:flutter/material.dart';
import './main.dart';

class Result extends StatelessWidget {
  const Result({Key? key, required this.resetQuiz}) : super(key: key);

  final VoidCallback resetQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const Text('You did it!'),
          ElevatedButton(
            onPressed: resetQuiz,
            child: Text('Restart Quiz'),
          )
        ],
      ),
    );
  }
}
