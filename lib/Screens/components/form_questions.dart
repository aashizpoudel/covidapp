import 'package:flutter/material.dart';
const headerStyle =
    TextStyle(color: Colors.pink, fontWeight: FontWeight.bold, fontSize: 18);


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