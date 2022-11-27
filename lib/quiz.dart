import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  const Quiz(
      {Key? key,
      required this.questions,
      required this.answerQuestion,
      required this.questionIndex})
      : super(key: key);

  final List<Map<String, Object>> questions;
  final int questionIndex;
  final VoidCallback answerQuestion;

  @override
  Widget build(BuildContext context) {
    return Column(
      /*  mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min, */
      children: [
        Question(questions: questions, index: questionIndex),
        ...(questions[questionIndex]['answer'] as List<String>).map((answer) {
          return Answer(answer: answer, pointToOnPress: answerQuestion);
        }).toList(),
      ],
    );
  }
}
