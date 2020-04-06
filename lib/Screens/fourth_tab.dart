import 'package:covidapp/Screens/third_tab.dart';
import 'package:covidapp/service/Fetcher.dart';
import 'package:flutter/material.dart';

class FourthTab extends StatefulWidget {
  @override
  _FourthTabState createState() => _FourthTabState();
}

class _FourthTabState extends State<FourthTab> {
  Future<List<Contact>> contacts;

  @override
  void initState() {
    super.initState();
    contacts = new Fetcher(context: context).getContacts();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Contact>>(
        future: contacts,
        builder: (context, snapShot) {
          return Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "महत्वपूर्ण सम्पर्कहरु",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Divider(),
                if (snapShot.hasData)
                  Expanded(
                    child: ListView(children: fetchItems(snapShot.data)),
                  )
                else
                  Text("No items available")
              ],
            ),
          );
        });
  }

  List<Widget> fetchItems(List<Contact> contacts) {
    List<Widget> l = [];
    if (contacts.length == 0) {
      l.add(Text("No contacts available"));
    }
    int i = 0;
    for (var item in contacts) {
      i++;
      l.add(NameCard(
        name: item.name,
        post: item.post,
        image: item.image,
        phNo: item.contact,
        color: getColor(i),
      ));
    }

    print(l);
    return l;
  }

  Color getColor(i) {
    Color color;
    if (i % 2 == 0) {
      color = Colors.blueGrey[100];
    } else {
      color = Colors.grey[100];
    }
    return color;
  }
}
