import 'package:flutter/material.dart';


class Question{
  final String title;
  final List<Map> answers;

  Question({
      @required this.title,//обязательные параметры
      @required this.answers
  });

}

class QuestionData{
  final _data=[
    Question(
      title: 'Как называется столица Австралии?',
      answers:[
        {'answer':'Канберра','isCorrect':1},
        {'answer':'Сидней',},
        {'answer':'Сеул',},
      ]
    ),
    Question(
        title: 'Сколько знаков после запятой имеет число π?',
        answers:[
          {'answer':'2',},
          {'answer':'0',},
          {'answer':'неизвестно','isCorrect':1},
        ]
    ),
    Question(
        title: 'Какой перец из перечисленных самый острый?',
        answers:[
          {'answer':'болгарский',},
          {'answer':'чилли','isCorrect':1},
          {'answer':'халапеньо',},
        ]
    ),
    Question(
        title: 'Кто ближайший родственник касатки?',
        answers:[
          {'answer':'кит','isCorrect':1},
          {'answer':'дельфин',},
          {'answer':'морская обезьяна',},
        ]
    ),
    Question(
        title: 'В начале 20 кода китаец съел:',
        answers:[
          {'answer':'ползучую мышь',},
          {'answer':'крадущуюся мышь',},
          {'answer':'летучую мышь','isCorrect':1},
        ]
    ),
  ];
  List<Question> get questions =>[... _data];


}