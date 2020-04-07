import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/widgets.dart';

class Fetcher {
  BuildContext context;
  Fetcher({this.context});
  Future<List<Contact>> getContacts() async {
    List<Contact> l = [];
    String data =
        await DefaultAssetBundle.of(context).loadString("assets/contacts.json");
    final jsonResult = json.decode(data);
    for (var d in jsonResult['data']) {
      l.add(Contact.fromJSON(d));
    }
    return l;
  }

  Future readNagarpalika() async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/nagarpalika.json");
    final jsonResult = json.decode(data);

    return jsonResult;
  }

  Future getWadaDetails(int wadaId) async {
    String data = await DefaultAssetBundle.of(context)
        .loadString("assets/nagarpalika.json");
    final jsonResult = json.decode(data);
    return jsonResult['wards-details']['$wadaId'];
  }

  Future<List<NewsTicker>> getAllNews({page}) async{
    List<NewsTicker> news= [];
    try{
      final response = await http.get("https://www.gadhimainepal.com/index.php?rest_route=/wp/v2/posts&categories=1994");
      var data = jsonDecode(response.body);

      for(var i in data){
        print(i);
        news.add(NewsTicker.fromJSON(i));
      }
    }catch(e){
      print(e);
    }

    return news;
  }
}

class Contact {
  String name, post, image, contact;
  Contact({this.name, this.post, this.image, this.contact});

  Contact.fromJSON(Map<String, dynamic> parsedJson) {
    this.name = parsedJson['name'];
    this.post = parsedJson['post'];
    this.image = parsedJson['image'];
    this.contact = parsedJson['contact'];
  }
}

class NewsTicker {
  int id;
  String title, excerpt, thumbnail, createdAt,content,featuredImage;

  NewsTicker({title,excerpt,thumbnail,content,createdAt,id,featuredImage});
  NewsTicker.fromJSON(Map<String, dynamic> parsedJson) {
    this.id = parsedJson['id'];
    this.title = parsedJson['title']['rendered'];
    this.excerpt = parsedJson['excerpt']['rendered'];
    this.content = parsedJson['content']['rendered'];

    this.featuredImage= this.thumbnail = parsedJson['jetpack_featured_media_url'];

    this.createdAt = parsedJson['modified_gmt'];
  }
}

class NewsContent {
  String title, content, created_at,thumbnail,id;
  NewsContent.fromJSON(Map<String, dynamic> parsedJson) {
        this.id = parsedJson['id'];

    this.title = parsedJson['title']['rendered'];
    this.content = parsedJson['content']['rendered'];
    this.thumbnail = parsedJson['uagb_featured_image_src']['medium'][0];
    this.created_at = parsedJson['modified'];
  }
}
