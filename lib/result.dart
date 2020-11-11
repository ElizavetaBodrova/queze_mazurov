import 'package:flutter/material.dart';


class Result extends StatelessWidget{
  final int count;
  final int total;
  final Function onClearState;

  const Result({Key key, this.count, this.total, this.onClearState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String msg= '';
    if(count<=2){
      msg='BAD';
    }
    else if(3<=count && count<=4){
      msg='not bad';
    }
    else {msg ='AWESOME';}

    return Container(
      child:Column(
        children: <Widget>[
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
            ),
          ),
        Text('Right answer: $count, total:$total ',),
          FlatButton(
            child: Text('One more chance'),
            onPressed: onClearState,
          )
        ],
      ),
    );

  }
  

  
}