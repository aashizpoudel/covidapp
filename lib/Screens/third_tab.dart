import 'package:covidapp/Screens/pages/wada_details.dart';
import 'package:flutter/material.dart';

class ThirdTab extends StatelessWidget {
  final List<Map<String, dynamic>> wadaDetail = [
    {
      'wada no': '१',
      'peoples': [
        {
          'name': 'बिनोद मानन्धर',
          'post': 'नगरसभा सदस्य',
          'image': 'images/ToDo.png',
          'contact': '९८४२०४०९०९',
        },
        {
          'name': 'बिनोद मानन्धर',
          'post': 'नगरसभा सदस्य',
          'image': 'images/ToDo.png',
          'contact': '९८४२०४०९०९',
        }
      ]
    },
    {
      'wada no': '२',
      'peoples': [
        {
          'name': 'बिनोद मानन्धर',
          'post': 'नगरसभा सदस्य',
          'image': 'images/ToDo.png',
          'contact': '९८४२०४०९०९',
        },
        {
          'name': 'बिनोद मानन्धर',
          'post': 'नगरसभा सदस्य',
          'image': 'images/ToDo.png',
          'contact': '९८४२०४०९०९',
        }
      ]
    },
    {
      'wada no': '३',
      'peoples': [
        {
          'name': 'बिनोद मानन्धर',
          'post': 'नगरसभा सदस्य',
          'image': 'images/ToDo.png',
          'contact': '९८४२०४०९०९',
        },
        {
          'name': 'बिनोद मानन्धर',
          'post': 'नगरसभा सदस्य',
          'image': 'images/ToDo.png',
          'contact': '९८४२०४०९०९',
        }
      ]
    },
  ];
  Color getColor(i) {
    Color color;
    if (i % 2 == 0) {
      color = Colors.lime[200];
    } else {
      color = Colors.cyan[200];
    }
    return color;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          NameCard(
            image: 'images/ToDo.png',
            name: 'तिलक राई',
            phNo: '९८५२०४५६००',
            email: 'mayor@dharan.gov.np',
            post: 'नगर प्रमुख',
            color: Colors.lime[200],
          ),
          NameCard(
            image: 'images/ToDo.png',
            name: 'मंजु भण्डारी (सुबेदी)',
            phNo: '९८५२०३८६००',
            email: 'deputymayor@dharan.gov.np',
            post: 'नगर उप-प्रमुख',
            color: Colors.cyan[200],
          ),
          Expanded(
            child: GridView.builder(
              itemCount: wadaDetail.length,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
              itemBuilder: (context, i) {
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WadaDetails(
                        wadaPeople: wadaDetail[i],
                      ),
                    ),
                  ),
                  child: Card(
                    color: getColor(i),
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[Text('वडा नं'), Text('${wadaDetail[i]['wada no']}')],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class NameCard extends StatelessWidget {
  final String image;
  final String name;
  final String post;
  final String email;
  final String phNo;
  final Color color;

  const NameCard(
      {this.image, this.name, this.post, this.email, this.phNo, this.color});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
                child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(image),
            )),
            SizedBox(
              width: 10,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'नाम: $name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text('पद: $post'),
                  Text('ईमेल: $email'),
                  Text('संपर्क: $phNo'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
