import 'package:covidapp/News/news_details.dart';
import 'package:flutter/material.dart';
import './../../service/Fetcher.dart';

class NewsHome extends StatefulWidget {
  @override
  _NewsHomeState createState() => _NewsHomeState();
}

class _NewsHomeState extends State<NewsHome> {
  Future<List<NewsTicker>> news;

  Future<void> loadNews(page) async {
    news = new Fetcher(context: context).getAllNews(page: page);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    loadNews(1);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: news,
        builder: (context, snap) {
          if (!snap.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );

          if (snap.data.length == 0)
            return Center(
              child: Text("केहि समाचार छैनन्।"),
            );

          return RefreshIndicator(
            onRefresh: (){return loadNews(1);},
            child: Container(
              color: Colors.black12,
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ListView.separated(
                      separatorBuilder: (context, i) {
                        return SizedBox(
                          height: 10,
                        );
                      },
                      shrinkWrap: true,
                      itemCount: snap.data.length,
                      itemBuilder: (context, i) {
                        return NewsCard(
                          news: snap.data[i],
                        );
                      }),
                ],
              ),
            ),
          );
        });
  }
}

String removeAllHtmlTags(String htmlText) {
  RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

  return htmlText.replaceAll(exp, '');
}

class NewsCard extends StatelessWidget {
  final NewsTicker news;

  const NewsCard({this.news});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => NewsDetail(
                      news: news,
                    )));
      },
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                '${removeAllHtmlTags(news.title)}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          '${removeAllHtmlTags(news.excerpt)}',
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Colors.black87),
                        ),
                        Text(
                          '${news.createdAt}',
                          style: TextStyle(color: Colors.black38, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0),
                      child: (news.thumbnail != null)
                          ? Image.network(news.thumbnail)
                          : Image.asset(
                              'images/tiger.jfif',
                            ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
    // Container(
    //   margin: EdgeInsets.all(10),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[

    //     ],
    //   ),
    // );
  }
}
