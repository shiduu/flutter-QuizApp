import 'package:flutter/material.dart';



class Answer  extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
       margin: EdgeInsets.all(10),

      child: RaisedButton(
        color: Colors.lightBlueAccent,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
        child: Text(answerText),
        onPressed: selectHandler,
        )
         ,);
   
  }
}