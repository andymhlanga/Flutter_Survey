import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Quiz App',
      home: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizApp();
}

class _QuizApp extends State<QuizPage> {
  var _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  var _questions = [
    {
      'question': 'Who are you?',
      'answer': [
        'Robot',
        'Human',
        'Alien',
      ],
    },
    {
      'question': 'What is your name?',
      'answer': [
        'Robu',
        'Honu',
        'Alu',
      ],
    },
    {
      'question': 'What do you eat?',
      'answer': [
        'Electricity',
        'Everything',
        'Water of Mars',
      ],
    },
    {
      'question': 'What do you want?',
      'answer': [
        'Follow the instruction',
        'Go to war and destroy.',
        'Go back to Mars.',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quiz App',
        ),
      ),
      body: Center(
        child: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex)
            : Result(resetQuiz: _resetQuiz),
      ),
    );
  }
}
