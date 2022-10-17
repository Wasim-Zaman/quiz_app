import 'package:flutter/material.dart';
import './ans.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final Function answer_question;
  final int question_index;
  final List<Map<String, Object>> questions;

  Quiz(
      {required this.question_index,
      required this.questions,
      required this.answer_question});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          Question(questions: questions, question_index: question_index),
          ...(questions[question_index]['answer'] as List<Map<String, Object>>)
              .map((answer) {
            return Answer(
              answer: answer['text'],
              answer_question: () => answer_question(answer['score']),
            );
          }).toList(),
        ],
      ),
    );
  }
}
