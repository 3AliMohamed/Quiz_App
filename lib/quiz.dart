import 'package:flutter/material.dart';
import 'ansswer.dart' ;
import 'question.dart';
class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionindex;
  final Function answerquestion;
  Quiz(this.question,this.questionindex,this.answerquestion);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionindex]['questionText']),
        ...(question[questionindex]['answers'] as List<Map<String, Object>>).map((answer){
          return Answer(() =>answerquestion(answer['score']),answer['text']);
        }).toList(),
      ],
    );
  }
}
