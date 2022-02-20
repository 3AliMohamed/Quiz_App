import 'package:flutter/material.dart';
import 'main.dart';
class Question extends StatelessWidget {
  final  quetiontext;

   Question(this.quetiontext);
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      margin: EdgeInsets.all(10.0),
      child: Text( quetiontext,
            style: TextStyle(fontSize: 25,color: b,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
      );
  }
}
