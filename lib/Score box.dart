import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models.dart';

class ScoreBox extends StatefulWidget {
  const ScoreBox({Key? key}) : super(key: key);

  @override
  State<ScoreBox> createState() => _ScoreBoxState();
}

class _ScoreBoxState extends State<ScoreBox> {
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;
  @override
  Widget build(BuildContext context) {
    bool isPassed = false;

    if (score >= questionList.length * 0.6) {
      //pass if 60 %
      isPassed = true;
    }
    String title = isPassed ? "Passed " : "Failed";
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue.shade900,
      title: Text("Quiz Result"),),
      body: Column(children: [
        SizedBox(height: 20,),
     Center(child: Image.asset("assets/images/Tick round.png",height: 80,),
     ),
        SizedBox(height: 10,),
        Text("Your quiz has been submitted",style: TextStyle(fontSize: 20),
        ),
        Text("Score Card",style: TextStyle(fontSize: 30,fontWeight:
        FontWeight.bold),),
        Container(
          child: Text(
            title + " | Score is $score",
            style: TextStyle(color: isPassed ? Colors.green : Colors.redAccent,
                fontSize: 30),
          ),
        ),
      ],),
    );
  }
}
