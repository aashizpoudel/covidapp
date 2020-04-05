import 'package:covidapp/Screens/components/middle_card.dart';
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          color: Colors.black12,
          child: Column(
            children: <Widget>[
              Text(
                'नमस्ते!',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('आज तपाईको स्वास्थ्य कस्तो छ ?'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  OutlineButton.icon(
                    borderSide: BorderSide(color: Colors.green),
                    onPressed: () {},
                    icon: Icon(
                      Icons.face,
                      color: Colors.green,
                    ),
                    label: Text('संचई छ'),
                  ),
                  SizedBox(width: 10,),
                  OutlineButton.icon(
                    borderSide: BorderSide(color: Colors.red),
                    onPressed: () {},
                    icon: Icon(
                      Icons.face,
                      color: Colors.red,
                    ),
                    label: Text('संचई छैन'),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'के तपाईको आसपासमा कोही भोकई छन?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: MiddleCard(
                      titleLabel: 'BPKIHS Help Line',
                      bodyLabel:
                          'वी.पी.कोइराला स्वास्थ बिज्ञान प्रतिसठन हेल्प लाइन',
                      icon: Icons.local_hospital,
                    ),
                  ),
                  Expanded(
                    child: MiddleCard(
                      titleLabel: 'Live Updates',
                      bodyLabel:
                          'वी.पी.कोइराला स्वास्थ बिज्ञान प्रतिसठन हेल्प लाइन',
                      icon: Icons.update,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'लक्षणहरु',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                  'यस्ता लक्षणहरु देखा परेमा नजीकको तोकिएको स्वास्थ्य केन्द्रमा संपर्क गर्नुहोस।'),
              Divider(),
              Text(
                'प्राय: सोधिने प्रश्नहरु',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 100,
              ),
              Divider(),
              Text(
                'भ्रम र यथार्थ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text('कोरोना भाईरस स्वासप्रस्वासको माध्यमबाट सरने रोग हो ।'),
              Center(
                child: OutlineButton(
                  borderSide: BorderSide(color: Theme.of(context).accentColor),
                  onPressed: () {},
                  child: Text(
                    'थप जानकारी ',
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                ),
              ),
              Divider(),
              Center(
                child: RaisedButton.icon(
                  color: Color(0xffa40000),
                  label: Text(
                    'राहत सहयोग',
                    style: TextStyle(color: Colors.white),
                  ),
                  icon: Icon(
                    Icons.supervisor_account,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
