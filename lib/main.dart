import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int total_score = 0;
  String get _print_phrase {
    return 'Total Score: $total_score';
  }

  int _question_index = 0;
  final _questions = const [
    {
      'question': 'What is your favortie color ?',
      'answer': [
        {'text': 'Red', 'score': 13},
        {'text': 'Black', 'score': 23},
        {'text': 'Peach', 'score': 36},
      ],
    },
    {
      'question': 'What type of cloths you like for your spause ?',
      'answer': [
        {'text': 'Islamic', 'score': 70},
        {'text': 'American', 'score': -5},
        {'text': 'Pakistani', 'score': 20}
      ],
    },
    {
      'question': 'Who is your ideal ?',
      'answer': [
        {'text': 'Ali', 'score': 93},
        {'text': 'Abubakar', 'score': 95},
        {'text': 'Usman', 'score': 93},
        {'text': 'Umar', 'score': 94}
      ],
    },
  ];

  void resetQuiz() {
    setState(() {
      _question_index = 0;
      total_score = 0;
    });
  }

  void _answer_question(int score) {
    setState(() {
      if (_question_index < _questions.length) {
        _question_index += 1;
      } else {
        print(_print_phrase);
      }
      total_score += score;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz Application'),
        ),
        body: (_question_index < _questions.length)
            ? Quiz(
                answer_question: _answer_question,
                questions: _questions,
                question_index: _question_index,
              )
            : Result(
                total_score: total_score,
                resetHandler: resetQuiz,
              ),
      ),
    );
  }
}
