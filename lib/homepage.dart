import 'package:covidapp/Screens/first_tab.dart';
import 'package:covidapp/Screens/fourth_tab.dart';
import 'package:covidapp/Screens/second_tab.dart';
import 'package:covidapp/Screens/third_tab.dart';
import 'package:flutter/material.dart';

class CovidHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          title: Text('COVID-19 Dharan'),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 20,
              ),
            )
          ],
          bottom: TabBar(tabs: [
            Tab(
              text: 'होम',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: 'बचने तरीका',
              icon: Icon(Icons.pageview),
            ),
            Tab(
              text: 'जनप्रतिनिधि',
              icon: Icon(Icons.people),
            ),
            Tab(
              text: 'रासन पानी',
              icon: Icon(Icons.fastfood),
            ),
          ]),
        ),
        body: TabBarView(
          children: [FirstTab(), SecondTab(), ThirdTab(), FourthTab()],
        ),
      ),
    );
  }
}
