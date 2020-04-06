import 'package:covidapp/Screens/third_tab.dart';
import 'package:covidapp/service/Fetcher.dart';
import 'package:flutter/material.dart';

class WadaDetails extends StatefulWidget {
  final int wadaId;
  const WadaDetails({@required this.wadaId});

  @override
  _WadaDetailsState createState() => _WadaDetailsState();
}

class _WadaDetailsState extends State<WadaDetails> {
  Future wadaPeople;

  @override
  void initState() {
    super.initState();
    wadaPeople = new Fetcher(context: context).getWadaDetails(widget.wadaId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('वडा नं ${widget.wadaId}'),
        ),
        body: FutureBuilder(
            future: wadaPeople,
            builder: (context, snapShot) {
              if (snapShot.hasData) {
                return ListView.builder(
                    itemCount: snapShot.data.length,
                    itemBuilder: (BuildContext context, int i) {
                      return Card(
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: NameCard(
                          name:snapShot.data[i]['name'],
                          image:snapShot.data[i]['image'],
                          phNo:snapShot.data[i]['contact'],
                          post:snapShot.data[i]['post'],
                        ),
                      );
                    });
              }

              return Center(
                child: Text("loading..."),
              );
            }));
  }
}
