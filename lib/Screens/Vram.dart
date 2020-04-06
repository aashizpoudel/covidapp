import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Vram extends StatefulWidget {
  @override
  _VramState createState() => _VramState();
}

class _VramState extends State<Vram> {
  WebViewController _controller;
  bool loading= true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loading=true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('कोभिड-१९ बारे भ्रम र यथार्थ')),
      body: Stack(
          children: [WebView(
          initialUrl: 'about:blank',
          onWebViewCreated: (WebViewController webViewController) async {
            _controller = webViewController;
            await loadHtmlFromAssets('assets/vram.html', _controller);
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