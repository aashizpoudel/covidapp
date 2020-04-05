import 'package:flutter/material.dart';

class MiddleCard extends StatelessWidget {
  final String titleLabel;
  final String bodyLabel;
  final IconData icon;

  const MiddleCard(
      {@required this.titleLabel, @required this.bodyLabel, this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(6),
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 80,
              color: Theme.of(context).primaryColor,
            ),
            Text(
              titleLabel,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              bodyLabel,
              textAlign: TextAlign.center,
              style: TextStyle(color: Theme.of(context).primaryColor),
            )
          ],
        ),
      ),
    );
  }
}