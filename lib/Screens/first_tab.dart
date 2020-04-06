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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlineButton(
                  textColor: Colors.black,
                  borderSide: BorderSide(color: Colors.red),
                  onPressed: () {
                    Navigator.of(context).pushNamed("/symptom");
                  },
                  child: Text(
                      'यदि तपाइलाइ Covid-19 लागेको शंका लागेमा यहा क्लिक गर्नुहोस्।'),
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/rahat");
                },
                color: Colors.pink,
                child: Text(
                  'आसपासमा कसैलाइ सहयोग चाहिएको छ भने यहा क्लिक गर्नुहोस्।',
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
          child: Wrap(
            spacing: 5.0,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                      child: MiddleCard(
                    onTap: () {
                      DefaultTabController.of(context).animateTo(1);
                    },
                    icon: Icons.nature_people,
                    titleLabel: "कोभिड -१९ बारे",
                    bodyLabel: "के हो कोभिड -१९?",
                  )),
                  Expanded(
                      child: MiddleCard(
                          onTap: () {
                            Navigator.of(context).pushNamed("/vram");
                          },
                          icon: Icons.nature_people,
                          titleLabel: "कोभिड - १९ बारे भ्रमहरु",
                          bodyLabel: "भ्रम र यथार्थ")),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: MiddleCard(
                      onTap: () {
                        Navigator.of(context).pushNamed('/news');
                      },
                      titleLabel: 'समाचार',
                      bodyLabel: 'Covid-19 बारे समाचार',
                      icon: Icons.poll,
                    ),
                  ),
                  Expanded(
                    child: MiddleCard(
                      onTap: () {
                        Navigator.pushNamed(context, "/liveupdates");
                      },
                      titleLabel: 'Live Updates',
                      bodyLabel: 'Covid-19 बारे Updates',
                      icon: Icons.update,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Center(
          child: MiddleCard(
              icon: Icons.local_hospital,
              titleLabel: "चिसापानी अस्पताल हटलाइन",
              bodyLabel: "9860048078",
              onTap: () {}),
        ),
        Center(
          child: RaisedButton.icon(
            color: Color(0xffa40000),
            label: Text(
              'राहत सहयोग गर्न यहा क्लिक गर्नुहोस्',
              style: TextStyle(color: Colors.white),
            ),
            icon: Icon(
              Icons.supervisor_account,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
