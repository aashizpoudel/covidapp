
import 'package:covidapp/News/news_list.dart';
import 'package:covidapp/Screens/LiveUpdates.dart';
import 'package:covidapp/Screens/Vram.dart';
import 'package:covidapp/Screens/pages/rahat_form.dart';
import 'package:covidapp/Screens/pages/symptoms_form.dart';
import 'package:covidapp/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'कोभिड हेल्पलाईन बर्दघाट',
      routes: {
          "/liveupdates": (_) {
            return LiveUpdateScreen();
          },
          "/vram": (_) {
            return Vram();
          },
          '/symptom':(c)=>SymptomsForm(),
          '/rahat':(c)=>RahatForm(),
          '/news':(c)=>NewsList(),
      },
      theme: ThemeData(
        primarySwatch: Colors.pink,
        fontFamily: 'Mukta'
      ),
      home: CovidHome(),
    );
  }
}
