import 'package:covidapp/service/Fetcher.dart';
import 'package:flutter/material.dart';

class ThirdTab extends StatefulWidget {


  @override
  _ThirdTabState createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {
  Color getColor(i){
    Color color;
    if(i % 2 == 0){
      color = Colors.lime[200];
    }else
    {
      color = Colors.cyan[200];
    }
    return color;
  }

Future nagarpalika;
  @override
  void initState() {
    super.initState();
    nagarpalika = new Fetcher(context:context).readNagarpalika();

  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future:nagarpalika,builder: (context,snapShot){
      if(snapShot.hasData){
        var ngr = snapShot.data;
return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          NameCard(
            image: ngr['mayor']['image'],
            name: ngr['mayor']['name'],
            phNo: ngr['mayor']['contact'],
            email: ngr['mayor']['email'],
            post: ngr['mayor']['post'],
            color: Colors.lime[200],
          ),
          NameCard(
            image: ngr['vice-mayor']['image'],
            name: ngr['vice-mayor']['name'],
            phNo: ngr['vice-mayor']['contact'],
            email: ngr['vice-mayor']['email'],
            post: ngr['vice-mayor']['post'],
            color: Colors.cyan[200],
          ),
          Expanded(
            child: GridView.builder(
                itemCount: ngr['wards'].length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, i) {
                  return Card(
                    color: getColor(i),
                    elevation: 5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[Text('वडा नं'), Text('${i + 1}')],
                    ),
                  );
                }),
          )
        ],
      ),
    );


      }

          return Center(child: Text("loading..."),);

    });
    
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
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex:1,
                child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(image!=null?image:'images/default.png',fit: BoxFit.contain,),
            )),
            SizedBox(
              width: 8,
            ),
            Expanded(
              flex: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'नाम: $name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text('पद: $post'),
                  if( email!=null) Text('ईमेल: $email'),
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
