import 'package:flutter/material.dart';
import 'package:queze_mazurov/Questions.dart';
import 'package:queze_mazurov/result.dart';
import 'package:queze_mazurov/Quiz.dart';

class HomePage extends StatefulWidget{
  @override
 _HomePageState createState()=>_HomePageState();
}

class _HomePageState extends State<HomePage>{

  final QuestionData data=QuestionData();
  int _countResult=0;
  int _questionIndex=0;

  void _clearState()=> setState (() {
    _countResult = 0;
    _questionIndex = 0;
  });


  void _onChangeAnswer(bool isCorrect) => setState((){
    if(isCorrect){
      _countResult++;
    }
    _questionIndex++;
  });

  Widget change(){
    return
    _questionIndex<data.questions.length?
    Quiz(
      index:_questionIndex,
      questionData: data,
      onChangeAnswer: _onChangeAnswer,
    )
        :Result(
      count: _countResult,
      total: data.questions.length,
      onClearState: _clearState,
    );
  }

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Quiz App'),),
      body: Center(
                child: Column(
                children: <Widget>[



                  change(),



                ],
      ),

            ),



    );
  }
}