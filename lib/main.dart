import 'package:flutter/material.dart';
import 'package:quiiz_app/quiz.dart';
import 'package:quiiz_app/result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

Color w=Colors.white;
Color b=Colors.black;

class _MyAppState extends State<MyApp> {
  int _questionindex = 0;
  int _totalscore = 0;
  int num0 = 0;
  int num1 = 0;
  int num2 = 0;
  var isSwitched=false;
  List<Map<String, Object>> _question = [
    {
      'questionText': 'What\'s Your Favourite Color ?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Yellow', 'score': 20},
        {'text': 'Red', 'score': 30},
        {'text': 'Green', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s Your Favourite Animal',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Tiger', 'score': 20},
        {'text': 'Elephant', 'score': 30},
        {'text': 'Lion', 'score': 40},
      ]
    },
    {
      'questionText': 'What\'s Your Favourite Instructor',
      'answers': [
        {'text': 'Hasssan', 'score': 10},
        {'text': 'Ali', 'score': 20},
        {'text': 'Amr', 'score': 30},
        {'text': 'Ahmed', 'score': 40},
      ]
    },
  ];

  void _resetquiz() {
    setState(() {
      _questionindex = 0;
      _totalscore = 0;
      num0=0;
      num1=0;
      num2=0;
    });
  }

  void _answerquestion(int score) {
    if(_questionindex==0) num0=score;
    else if(_questionindex==1) num1=score;
    else if(_questionindex==2) num2=score;
    _totalscore += score;
    setState(() {
      _questionindex += 1;
    });
    print("questionIndex=$_questionindex");
    print("num0=$num0");
    print("num1=$num1");
    print("num2=$num2");
    print("totalscore=$_totalscore");
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App',style: TextStyle(color: b),),
          actions: [
            Switch(value: isSwitched,
                onChanged: (value){
                setState(() {
                  isSwitched=value;
                  if(isSwitched==true) {b=Colors.white; w=Colors.black;}
                  if(isSwitched==false){b=Colors.black; w=Colors.white;}
                });
                },
                activeColor: Colors.white,
                inactiveThumbColor: Colors.black,
                inactiveTrackColor: Colors.black,
                )
          ],
        ),
        body: Container(
          color: w,
            child: _questionindex < _question.length
                ? Quiz(_question, _questionindex, _answerquestion)
                : Result(_resetquiz, _totalscore)),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back,color: b,size: 30,),
          onPressed: () {
            if(_questionindex==1) _totalscore-=num0;
            else if(_questionindex==2) _totalscore-=num1;
            else if(_questionindex==3) _totalscore-=num2;
            setState(() {
              if (_questionindex > 0) {
                _questionindex--;
              }
            }) ;
            print("questionIndex=$_questionindex");
            print("num0=$num0");
            print("num1=$num1");
            print("num2=$num2");
            print("totalscore=$_totalscore");
          },
        ),
      ),
    );
  }
}
