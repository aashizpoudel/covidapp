import 'package:covidapp/homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COVID-19',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Cambay'
      ),
      home: CovidHome(),
    );
  }
}
