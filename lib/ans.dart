import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final answer;
  final answer_question;
  Answer({this.answer_question, this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(5),
        child: ElevatedButton(
          onPressed: answer_question,
          child: Text(answer),
          style: ElevatedButton.styleFrom(padding: EdgeInsets.all(13)),
        ));
  }
}
