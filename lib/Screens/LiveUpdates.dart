import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LiveUpdateScreen extends StatefulWidget {
  @override
  _LiveUpdateScreenState createState() => _LiveUpdateScreenState();
}

class _LiveUpdateScreenState extends State<LiveUpdateScreen> {
  bool loading= true;

  @override
  void initState() {
    super.initState();
    loading=true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Live Update')),
      body: Stack(
          children: [WebView(
          initialUrl: 'http://corona.rabimsoft.com',
          onWebViewCreated: (WebViewController webViewController) async {
            // await loadHtmlFromAssets('assets/liveupdate.html', _controller);
            // _controller.loadUrl("http://google.com");
          },onPageFinished: (s){
            setState(() {
              loading=false;
            });
          },
        ),
        loading?Center(child: CircularProgressIndicator(),):Container()
        ]
      ),
    );
  }

  Future<void> loadHtmlFromAssets(String filename, controller) async {
        String fileText = await rootBundle.loadString(filename);
        controller.loadUrl(Uri.dataFromString(fileText, mimeType: 'text/html', encoding: Encoding.getByName('utf-8')).toString());
    }
}