import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total_score;
  final VoidCallback resetHandler;
  String get print_phrase {
    String phrase = 'Your Score is {$total_score}';
    return phrase;
  }

  Result({required this.total_score, required this.resetHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            print_phrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontFamily: 'robotto',
            ),
          ),
          TextButton(
            onPressed: resetHandler,
            child: Text(
              'Reset Quiz',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
