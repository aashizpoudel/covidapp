import 'package:covidapp/News/news_categories.dart/news_home.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
          child: Scaffold(
        appBar: AppBar(
            title: Text('समाचार'),
            bottom: TabBar(tabs: [
              Text('मुख्य'),
              Text('विस्व'),
              // Text('आर्थिक'),
              // Text('राजनीतिक '),
              // Text('खेलकुद'),
              // Text('स्वास्थ'),
            ]),
        ),
        body: TabBarView(children: [
            NewsHome(),
            NewsHome()
        ]),
      ),
    );
  }
}
