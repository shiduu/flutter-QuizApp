import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

    final questions = [
      {'questionText' :   'what\'s is your favourite color?',
       'answers': [
         {'text':'black','score': 5},
         {'text':'red', 'score':5},
         {'text':'green', 'score':9},
         {'text':'white', 'score':6}
         ]
       },
       {'questionText' :  'what\'s is your favourite animal? ',
       'answers': [
         {'text':'lion','score': 5},
         {'text':'zebra', 'score':5},
         {'text':'elephant', 'score':9},
         {'text':'tiger', 'score':6}
         ]
       },
       {'questionText' :   'what\'s is your favourite teacher?',
       'answers': [
         {'text':'kaka','score': 5},
         {'text':'king', 'score':5},
         {'text':'kong', 'score':9},
         {'text':'prof', 'score':6}
         ]
       },
      
    ];

  var questionIndex = 0;
  var totalScore = 0;

  void resetQuiz(){
   
   setState((){
     questionIndex = 0;
     totalScore = 0;
   });

  }

  void answerQuestion(int score){
   
    totalScore += score;

    setState((){
      questionIndex += 1;
    });
    print(questionIndex);
  }

  Widget build(BuildContext context){

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
          backgroundColor: Colors.lightBlueAccent,
      
        ),
        body: questionIndex < questions.length 
        ?
        Quiz(
          answerQuestion: answerQuestion,
          questionIndex: questionIndex,
          questions: questions,
          )
        : Result(totalScore, resetQuiz),
        ),    
    );
  }
}