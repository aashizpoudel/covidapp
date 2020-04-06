import 'package:flutter/material.dart';

class NewsDetail extends StatelessWidget {
  final Map news;

  const NewsDetail({this.news});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Provider Name '),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Text(
            '${news['topic']}',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            '${news['date']}',
            style: TextStyle(color: Colors.black38, fontSize: 12),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: (news['image'] != null)
                ? Image.asset('${news['image']}')
                : Image.asset(
                    'images/tiger.jfif',
                  ),
          ),
          SizedBox(
            height: 10,
          ),
          Text('${news['body']}')
        ],
      ),
    );
  }
}
