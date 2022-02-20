import 'package:flutter/material.dart';
import 'main.dart';
class Answer extends StatelessWidget {
  final String AnswerText;
  final Function AnswerFunction;
  Answer(this.AnswerFunction,this.AnswerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text(AnswerText ,style: TextStyle(fontSize: 30,color: Colors.white)),
        onPressed: AnswerFunction,
      ),
    );
  }
}
