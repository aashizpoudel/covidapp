import 'dart:ui';

import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FAQ(),
        SizedBox(height: 8.0,),
        FAQ(),
      ],
    );
  }
}

class FAQ extends StatelessWidget {
  String question,answer;
  FAQ({this.question,this.answer});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child:Wrap(children: <Widget>[
          Text("कोभिड - १९ भनेको के हो?",style: TextStyle(color:Colors.red, fontSize:25,fontWeight: FontWeight.bold),),
        Text("कोभिड - १९ भनेको के हो? ादा दास द ाद ा दा द ा सा  उा उजसा जा सजउ ाज गाज उाजउ ाज उाज उाज उा ा जसदा उजा उजाउाजउाउकाउा उज ाउ"),
        Divider()
      ],)    
    );
  }
}