import 'package:covidapp/Screens/components/form_questions.dart';
import 'package:flutter/material.dart';

enum IsPoor { yes, no }
enum GotHelp { yes, no }

class RahatForm extends StatefulWidget {
  @override
  _RahatFormState createState() => _RahatFormState();
}

class _RahatFormState extends State<RahatForm> {
  IsPoor isPoor;
  GotHelp gotHelp;

  final _formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _tolNo = TextEditingController();
  TextEditingController _gharNo = TextEditingController();
  TextEditingController _pnNo = TextEditingController();
  int odaNo;

  List<DropdownMenuItem> getOdaList(int totalOdaNo) {
    List<DropdownMenuItem> _menuItem = [];
    for (var i = 1; i <= totalOdaNo; i++) {
      _menuItem.add(DropdownMenuItem(value: i, child: Text('$i')));
    }
    return _menuItem;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('कसैलाई राहत चाइएको छ भने यहा भर्नुहोस'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            FormQuestions(
              title: 'के तपाईको आसपास कसैलाई राहात चाइएको छ?',
              dropBuottonHint: 'छ वा छैन',
              value: isPoor,
              dropBuottonList: [
                DropdownMenuItem(
                  value: IsPoor.yes,
                  child: Text('छ'),
                ),
                DropdownMenuItem(
                  value: IsPoor.no,
                  child: Text('छैन'),
                )
              ],
              onDropDownChanged: (value) {
                setState(() {
                  isPoor = value;
                });
              },
            ),
            FormQuestions(
              title: 'के राहत अगाडिनै पाएको छ?',
              dropBuottonHint: 'छ वा छैन',
              value: gotHelp,
              dropBuottonList: [
                DropdownMenuItem(
                  value: GotHelp.yes,
                  child: Text('छ'),
                ),
                DropdownMenuItem(
                  value: GotHelp.no,
                  child: Text('छैन'),
                )
              ],
              onDropDownChanged: (value) {
                setState(() {
                  gotHelp = value;
                });
              },
            ),
            Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 20,),
                    Text(
                      'राहात पाउने व्यक्तिको परिचय',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    TextFormField(
                      controller: _name,
                      validator: (value) {
                        if (value.isNotEmpty) {
                          return null;
                        }
                        return 'कृपया आफ्नो नाम लेख्नुहोस';
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.people),
                        labelText: 'नाम',
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text('वडा नम्बर', style: headerStyle),
                    DropdownButton(
                        isExpanded: true,
                        hint: Text('आफ्नो वडा छान्नुहोस'),
                        value: odaNo,
                        items: getOdaList(10),
                        onChanged: (value) {
                          setState(() {
                            odaNo = value;
                          });
                        }),
                    TextFormField(
                      controller: _tolNo,
                      validator: (value) {
                        if (value.isNotEmpty) {
                          return null;
                        }
                        return 'कृपया आफ्नो टोल/चौक लेख्नुहोस';
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.build),
                        labelText: 'टोल/चौक',
                      ),
                    ),
                    TextFormField(
                      controller: _gharNo,
                      validator: (value) {
                        if (value.isNotEmpty) {
                          return null;
                        }
                        return 'कृपया आफ्नो घर नंबर लेख्नुहोस';
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.home),
                        labelText: 'घर नंबर',
                      ),
                    ),
                    TextFormField(
                      controller: _pnNo,
                      validator: (value) {
                        if (value.isNotEmpty) {
                          return null;
                        }
                        return 'कृपया आफ्नो संपर्क नंबर लेख्नुहोस';
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        labelText: 'संपर्क नंबर',
                      ),
                    ),
                    RaisedButton(
                        color: Colors.pinkAccent,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            return showModalBottomSheet(
                              context: context,
                              builder: (context) {
                                return Container(
                                  child: Column(
                                    children: <Widget>[
                                      Text('Congratz You Have Corona'),
                                    ],
                                  ),
                                );
                              },
                            );
                          } else {
                            return null;
                          }
                        },
                        child: Text(
                          'Confirm & Submit',
                          style: TextStyle(color: Colors.white),
                        ))
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
