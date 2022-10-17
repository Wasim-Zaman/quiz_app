import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int question_index;
  // ignore: non_constant_identifier_names
  Question({required this.questions, required this.question_index});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(questions[question_index]['question'] as String),
    );
  }
}
