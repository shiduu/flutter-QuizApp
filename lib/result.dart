
import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if(resultScore <= 10){
      resultText = 'your greate buddy';
    }else if(resultScore <= 20){
      resultText  = 'keep rocking bad ass';

    }else{
      resultText = 'your bad mf';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
       Text(
        resultPhrase,
         style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
      FlatButton(
        child: Text(
          'Reset Quiz',
        ),
        textColor: Colors.lightBlueAccent,
        onPressed: resetHandler,
      )
      ],
      ),
      
    );
  }
}