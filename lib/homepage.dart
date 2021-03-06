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
        appBar: AppBar(
          leading: SizedBox(width: 10,),
          title: Text('कोभिड हेल्पलाईन बर्दघाट"'),
         
       ),
       bottomNavigationBar:  TabBar(
         labelColor: Colors.pink,
            tabs: [
            Tab(
              text: 'होम',
              icon: Icon(Icons.home),
            ),
            Tab(
              text: 'कोभिड-१९',
              icon: Icon(Icons.pageview),
            ),
            Tab(
              text: 'जनप्रतिनिधि',
              icon: Icon(Icons.people),
            ),
            Tab(
              text: 'अन्य सम्पर्क',
              icon: Icon(Icons.account_circle),
            ),
          ]),
        
        body: TabBarView(
          children: [FirstTab(), SecondTab(), ThirdTab(), FourthTab()],
        ),
      ),
    );
  }
}
