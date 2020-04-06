import 'package:flutter/material.dart';

class MiddleCard extends StatelessWidget {
  final String titleLabel;
  final String bodyLabel;
  final IconData icon;
  final Function onTap;
  const MiddleCard(
      {@required this.titleLabel, @required this.bodyLabel, this.icon,@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(6),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: InkWell(
        onTap: this.onTap,
              child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              Icon(
                icon,
                size: 60,
                color: Theme.of(context).primaryColor,
              ),
              Text(
                titleLabel,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              Text(
                bodyLabel,
                textAlign: TextAlign.center,
                style: TextStyle(color: Theme.of(context).primaryColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}