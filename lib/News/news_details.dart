import 'package:covidapp/service/Fetcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/dom.dart' as dom;


class NewsDetail extends StatelessWidget {
  final NewsTicker news;

  const NewsDetail({this.news});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${news.title}'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          Text(
            '${news.title}',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          Text(
            '${news.createdAt}',
            style: TextStyle(color: Colors.black38, fontSize: 12),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: (news.thumbnail != null)
                ? Image.network('${news.featuredImage}')
                : Image.asset(
                    'images/tiger.jfif',
                  ),
          ),
          SizedBox(
            height: 10,
          ),
          Html(data: news.content,
          customTextStyle: (dom.Node node, TextStyle baseStyle) {
              if (node is dom.Element) {
                switch (node.localName) {
                  case "p":
                    return baseStyle.merge(TextStyle(height: 2, fontSize: 16));
                }
              }
              return baseStyle;
            },
          )
        ],
      ),
    );
  }
}
