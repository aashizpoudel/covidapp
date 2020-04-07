import 'package:covidapp/News/news_categories.dart/news_home.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('कोभिड-१९ बारे समाचार'),
      ),
      body: NewsHome(),
    );
  }
}
