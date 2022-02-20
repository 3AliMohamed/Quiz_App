import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
class Result extends StatelessWidget {
  final Function q;
  final resultscore;

  Result(this.q, this.resultscore);

  String get resultphrase {
    String resulttext;
    if (resultscore >= 70) {
      resulttext = 'You Are Awesome!';
    } else if (resultscore >= 40) {
      resulttext = 'Pretty Likealble !';
    } else {
      resulttext = 'You Are So Bad !';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
      Text(
        "Your Score Is $resultscore",
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: b),
        textAlign: TextAlign.center,
      ),
      Text(
        resultphrase,
        style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold,color: b),
        textAlign: TextAlign.center,
      ),
      FlatButton(
        onPressed: q,
        child: Text(
          'Restart The App',
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
      )
    ]));
  }
}
