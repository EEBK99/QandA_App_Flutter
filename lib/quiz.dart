import 'package:flutter/material.dart';

import './qtn.dart';
import './ans.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestions;
  final int qIndex;
  Quiz({
    @required this.questions,
    @required this.answerQuestions,
    @required this.qIndex,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[qIndex]['question'],
        ),
        ...(questions[qIndex]['answers'] as List<Map<String, Object>>)
            .map((ans) {
          return Answer(() => answerQuestions(ans['score']), ans['text']);
        }).toList()
//RaisedButton(child: Text('Button 1'), onPressed: _ansQuestions),
      ],
    );
  }
}
