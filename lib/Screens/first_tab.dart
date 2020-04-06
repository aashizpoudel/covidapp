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
                'नमस्कार',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
              OutlineButton(
                textColor: Colors.black,
                borderSide: BorderSide(color: Colors.red),
                onPressed: (){

                },
                child: Text(
                    'यदि तपाइलाइ Covid-19 लागेको शका लागेमा यहा क्लिक गर्नुहोस्।'),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  'के तपाईको आसपासमा कोही भोकै छन?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: MiddleCard(
                      titleLabel: 'Chisapani Hospital',
                      bodyLabel: 'चिसापानी अस्पताल हेल्प लाइन',
                      icon: Icons.local_hospital,
                    ),
                  ),
                  Expanded(
                    child: MiddleCard(
                      titleLabel: 'Live Updates',
                      bodyLabel: 'Covid-19 बारे Updates',
                      icon: Icons.update,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Covid-19 का लक्षणहरु',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 190,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        width: 150,
                        child: Card(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(children: [
                            Image.asset("images/jworo.png"),
                            Center(
                              child: Text(
                                "ज्वरो आउनु",
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ]),
                        )),
                      ),
                      Container(
                        width: 150,
                        child: Card(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(children: [
                            Image.asset("images/khoki.png"),
                            Center(
                              child: Text(
                                "सुक्खा खोकी लाग्नु",
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ]),
                        )),
                      ),
                      Container(
                        width: 150,
                        child: Card(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(children: [
                            Image.asset("images/swas.png"),
                            Center(
                              child: Text(
                                "स्वास प्रस्वासमा समस्या",
                                style: TextStyle(fontSize: 13),
                              ),
                            )
                          ]),
                        )),
                      ),
                      Container(
                        width: 150,
                        child: Card(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(children: [
                            Image.asset("images/tauko.png"),
                            Center(
                              child: Text(
                                "टाउको दुख्ने",
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ]),
                        )),
                      ),
                      Container(
                        width: 150,
                        child: Card(
                            child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(children: [
                            Image.asset("images/ghaati.png"),
                            Center(
                              child: Text(
                                "घाटी दुख्ने",
                                style: TextStyle(fontSize: 15),
                              ),
                            )
                          ]),
                        )),
                      ),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  'यस्ता लक्षणहरु देखा परेमा नजीकको तोकिएको स्वास्थ्य केन्द्रमा तुरुन्त संपर्क गर्नुहोस।'),
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
