import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15),
        children: [
          Text(
            "कोरोना भाइरस (कोभिड-१९)",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Text(
            "हाल विश्वभरी फैलिरहेका नयाँ कोरोना भाइरसको संक्रमणबाट लागेको रोगलाई विश्व स्वास्थ्य संगठनले “कोभिड १९” को नाम दिएको छ र यसलाई विश्वव्यापी महामारीको रुपमा घोषणा गरिसकिएको छ ।कोरोना भाइरस श्वाशप्रश्वाशको माध्यमबाट सर्ने रोग हो । यो संक्रमित व्यक्त्तिले खोक्दा वा हाछ्युँ गर्दा नाक वा मुखबाट निस्कने छिट्टाको माध्यमबाट एक व्यक्त्तिबाट अर्को व्यक्त्तिमा सर्दछ ।",
            softWrap: true,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'कोरोना भाइरसका लक्षणहरु',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                    ])),
            SizedBox(
              height: 10,
            ),
            Text(
                'यस्ता लक्षणहरु देखा परेमा नजीकको तोकिएको स्वास्थ्य केन्द्रमा तुरुन्त संपर्क गर्नुहोस।',
                style: TextStyle(color: Colors.red)),
            Divider(),
            Text(
              'कोरोना भाइरस बाट बच्ने उपाय',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Container(
              color: Colors.pink[100],
              child: CarouselSlider(
              
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                  viewportFraction: 1.0,
                  items: [
                    Card(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.60,
                              child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "बेलाबेलामा साबुन-पानीले कम्तिमा २० सेकेन्ड मिचिमिचि हात धुने वा अल्कोहल भएको स्यानिटाइजर प्रयोग गर्ने ।",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'images/sabun.png',
                                fit: BoxFit.contain,
                              ),
                            )),
                          ]),
                    ),
                    Card(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'images/vidvad.png',
                                fit: BoxFit.contain,
                              ),
                            )),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "भिडभाडमा नजाने र अरुलाई पनि नजाने सुझाव दिने, हात मिलाउनुको सट्टा नमस्कार गर्ने ।",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )),
                            ),
                          ]),
                    ),
                    Card(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "खोक्दा वा हाछ्युँ गर्दा नाक मुख टिस्यू पेपर वा कुहिनाले छोप्ने र प्रयोग गरेको टिस्यू पेपरलाई बिर्को भएको फोहर फाल्ने भाँडोमा फाल्ने र साबुन-पानीले मिचिमिचि हात धुने वा अल्कोहल भएको स्यानिटाईजर प्रयोग गर्ने ।",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )),
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'images/khokda.png',
                                fit: BoxFit.contain,
                              ),
                            )),
                          ]),
                    ),
                    Card(
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                'images/hospital.png',
                                fit: BoxFit.contain,
                              ),
                            )),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Container(
                                  padding: EdgeInsets.all(8),
                                  child: Text(
                                    "कोरोना प्रभावित देशबाट आएको व्यक्त्तिहरूमा माथिका लक्षणहरू देखिए स्वास्थ्य केन्द्रमा तुरून्त जानुपर्दछ । घरैमा बस्दा परिवारका सदस्यहरूबाट १४ दिन सम्म छुट्टै आईसोलेसनमा बस्नु पर्दछ ।",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500),
                                  )),
                            ),
                          ]),
                    )
                  ]),
            )
          ])
        ]);
  }
}

class FAQ extends StatelessWidget {
  String question, answer;
  FAQ({this.question, this.answer});
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
          padding: EdgeInsets.all(10.0),
          child: Wrap(
            children: <Widget>[
              Text(
                "कोभिड - १९ भनेको के हो?",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                  "कोभिड - १९ भनेको के हो? ादा दास द ाद ा दा द ा सा  उा उजसा जा सजउ ाज गाज उाजउ ाज उाज उाज उा ा जसदा उजा उजाउाजउाउकाउा उज ाउ"),
              Divider()
            ],
          )),
    ]);
  }
}
