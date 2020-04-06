import 'dart:convert';

import 'package:flutter/widgets.dart';

class Fetcher {
  BuildContext context;
  Fetcher({this.context});
  Future<List<Contact>> getContacts() async {
    List<Contact> l =[];
    String data =
        await DefaultAssetBundle.of(context).loadString("assets/contacts.json");
    final jsonResult = json.decode(data);
    for(var d in jsonResult['data']){
      l.add(Contact.fromJSON(d));
    }
    return l;
  }

  Future readNagarpalika() async {
    String data =
        await DefaultAssetBundle.of(context).loadString("assets/nagarpalika.json");
    final jsonResult = json.decode(data);
    
    return jsonResult;
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
