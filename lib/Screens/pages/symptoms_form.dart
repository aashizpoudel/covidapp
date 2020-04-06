import 'package:flutter/material.dart';

const headerStyle =
    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 18);
enum Sex { male, female, lgbt }
enum Temperature { below, normal, high }
enum SelfQuarantine { yes, no }
enum Cough { yes, no }
enum Fatigue { yes, no }
enum SourThroat { yes, no }
enum ShortBreath { yes, no }
enum BodyPain { yes, no }
enum Diaria { yes, no }
enum Nausea { yes, no }
enum RunningNose { yes, no }
enum FromAbroad { yes, no }
enum GotContaminated { yes, no }

class SymptomsForm extends StatefulWidget {
  @override
  _SymptomsFormState createState() => _SymptomsFormState();
}

class _SymptomsFormState extends State<SymptomsForm> {
  //dropdownVariable
  Sex sex;
  Temperature temperature;
  SelfQuarantine selfQuarantine;
  Cough cough;
  Fatigue fatigue;
  SourThroat sourThroat;
  ShortBreath shortBreath;
  BodyPain bodyPain;
  Diaria diaria;
  Nausea nausea;
  RunningNose runningNose;
  FromAbroad fromAbroad;
  GotContaminated gotContaminated;

  //form variable
  final _formKey = GlobalKey<FormState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _age = TextEditingController();
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
        title: Text(
          'आफ्ना लक्षणहरुको मूल्यांकन गर्नुहोस',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            FormQuestions(
              title: 'प्रयोगकर्ताको लिङ्ग',
              dropBuottonHint: 'पुरुष महिला वा अन्य',
              value: sex,
              dropBuottonList: [
                DropdownMenuItem(value: Sex.male, child: Text('पुरुष')),
                DropdownMenuItem(value: Sex.female, child: Text('महिला')),
                DropdownMenuItem(value: Sex.lgbt, child: Text('अन्य')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  sex = value;
                });
              },
            ),
            FormQuestions(
              title: 'तापक्रम',
              dropBuottonHint: 'तपाईको हालको तापक्रम लेख्नु होस',
              value: temperature,
              dropBuottonList: [
                DropdownMenuItem(
                    value: Temperature.below, child: Text('सामान्य (९६-९८.६)')),
                DropdownMenuItem(
                    value: Temperature.normal, child: Text('ज्वरो (९८.६-१०२)')),
                DropdownMenuItem(
                    value: Temperature.high, child: Text('उच्च ज्वरो (>१०४)')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  temperature = value;
                });
              },
            ),
            FormQuestions(
              title: 'के तपाई सेल्फ कुआरंटाइनमा बसनुभएको छ?',
              dropBuottonHint: 'छ वा छैन',
              value: selfQuarantine,
              dropBuottonList: [
                DropdownMenuItem(value: SelfQuarantine.yes, child: Text('छ ')),
                DropdownMenuItem(value: SelfQuarantine.no, child: Text('छैन ')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  selfQuarantine = value;
                });
              },
            ),
            FormQuestions(
              title: 'सूखा तथा लहरे खोकी',
              dropBuottonHint: 'छ वा छैन',
              value: cough,
              dropBuottonList: [
                DropdownMenuItem(value: Cough.yes, child: Text('छ ')),
                DropdownMenuItem(value: Cough.no, child: Text('छैन ')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  cough = value;
                });
              },
            ),
            FormQuestions(
              title: 'थकाई लाग्ने',
              dropBuottonHint: 'छ वा छैन',
              value: fatigue,
              dropBuottonList: [
                DropdownMenuItem(value: Fatigue.yes, child: Text('छ ')),
                DropdownMenuItem(value: Fatigue.no, child: Text('छैन ')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  fatigue = value;
                });
              },
            ),
            FormQuestions(
              title: 'घाटी बस्ने',
              dropBuottonHint: 'छ वा छैन',
              value: sourThroat,
              dropBuottonList: [
                DropdownMenuItem(value: SourThroat.yes, child: Text('छ ')),
                DropdownMenuItem(value: SourThroat.no, child: Text('छैन ')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  sourThroat = value;
                });
              },
            ),
            FormQuestions(
              title: 'आराम गर्दा पनि सास छोटो भयजस्तों लाग्ने',
              dropBuottonHint: 'छ वा छैन',
              value: shortBreath,
              dropBuottonList: [
                DropdownMenuItem(value: ShortBreath.yes, child: Text('छ ')),
                DropdownMenuItem(value: ShortBreath.no, child: Text('छैन ')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  shortBreath = value;
                });
              },
            ),
            FormQuestions(
              title: 'जीउ दुखाई',
              dropBuottonHint: 'छ वा छैन',
              value: bodyPain,
              dropBuottonList: [
                DropdownMenuItem(value: BodyPain.yes, child: Text('छ ')),
                DropdownMenuItem(value: BodyPain.no, child: Text('छैन ')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  bodyPain = value;
                });
              },
            ),
            FormQuestions(
              title: 'पखाला ',
              dropBuottonHint: 'छ वा छैन',
              value: diaria,
              dropBuottonList: [
                DropdownMenuItem(value: Diaria.yes, child: Text('छ ')),
                DropdownMenuItem(value: Diaria.no, child: Text('छैन ')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  diaria = value;
                });
              },
            ),
            FormQuestions(
              title: 'वाकवाकी',
              dropBuottonHint: 'छ वा छैन',
              value: nausea,
              dropBuottonList: [
                DropdownMenuItem(value: Nausea.yes, child: Text('छ ')),
                DropdownMenuItem(value: Nausea.no, child: Text('छैन ')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  nausea = value;
                });
              },
            ),
            FormQuestions(
              title: 'सिगान बग्ने',
              dropBuottonHint: 'छ वा छैन',
              value: runningNose,
              dropBuottonList: [
                DropdownMenuItem(value: RunningNose.yes, child: Text('छ ')),
                DropdownMenuItem(value: RunningNose.no, child: Text('छैन ')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  runningNose = value;
                });
              },
            ),
            FormQuestions(
              title:
                  'के तपाई बिगत दुई हपतामा कुनै कोरोनाले ग्रस्त मुलुकबाट फर्कानुभएको हो?',
              dropBuottonHint: 'हो  वा हैन',
              value: fromAbroad,
              dropBuottonList: [
                DropdownMenuItem(value: FromAbroad.yes, child: Text('हो')),
                DropdownMenuItem(value: FromAbroad.no, child: Text('हैन')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  fromAbroad = value;
                });
              },
            ),
            FormQuestions(
              title:
                  'के तपाई बिगत दुई हपतामा कुनै कोरोनाले संक्रमित वा आसंका भएको ब्यक्तिको संपर्कमा आउनुभएको छ?',
              dropBuottonHint: 'छ वा छैन',
              value: gotContaminated,
              dropBuottonList: [
                DropdownMenuItem(value: GotContaminated.yes, child: Text('छ ')),
                DropdownMenuItem(
                    value: GotContaminated.no, child: Text('छैन ')),
              ],
              onDropDownChanged: (value) {
                setState(() {
                  gotContaminated = value;
                });
              },
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Text(
                      'आफनो परिचय दिनुहोस',
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
                    TextFormField(
                      controller: _age,
                      validator: (value) {
                        if (value.isNotEmpty) {
                          return null;
                        }
                        return 'कृपया आफ्नो उमेर लेख्नुहोस';
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.people),
                        labelText: 'उमेर',
                      ),
                    ),
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
                        color: Colors.green,
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            return showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return Container(
                                    child: Column(
                                      children: <Widget>[
                                        Text(
                                          'Congratz You Have Corona'
                                        )
                                      ],
                                    ),
                                  );
                                });
                          }
                          else{
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
            )
          ],
        ),
      ),
    );
  }
}

class FormQuestions extends StatelessWidget {
  const FormQuestions({
    this.value,
    @required this.title,
    @required this.dropBuottonHint,
    this.dropBuottonList,
    this.onDropDownChanged,
  });

  final String title;
  final String dropBuottonHint;
  final List<DropdownMenuItem> dropBuottonList;
  final value;
  final Function onDropDownChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: headerStyle),
        DropdownButton(
            isExpanded: true,
            hint: Text(dropBuottonHint),
            value: value,
            items: dropBuottonList,
            onChanged: onDropDownChanged),
      ],
    );
  }
}
