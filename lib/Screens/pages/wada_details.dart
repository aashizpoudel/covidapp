import 'package:flutter/material.dart';

class WadaDetails extends StatelessWidget {
  final Map<String, dynamic> wadaPeople;

  const WadaDetails({@required this.wadaPeople});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('वडा नं ${wadaPeople['wada no']}'),
      ),
      body: ListView.builder(
          itemCount: wadaPeople['peoples'].length,
          itemBuilder: (BuildContext context, int i) {
            return
             Card(
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset('${wadaPeople['peoples'][i]['image']}'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(flex:2,child: 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                    'नाम: ${wadaPeople['peoples'][i]['name']}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text('पद:${wadaPeople['peoples'][i]['post']}'),
                  Text('वडा नं ${wadaPeople['wada no']}'),
                  Text('संपर्क: ${wadaPeople['peoples'][i]['contact']}'),
                    ],
                  )
                  ),
                ],
              ),
            );
          }),
    );
  }
}
