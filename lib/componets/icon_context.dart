import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/model/contanst.dart';

class IconContext extends StatelessWidget {
  final IconData iconData;
  final String name;
  IconContext({this.iconData, this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text("FEMALE", style: KlableTextStyle)
      ],
    );
  }
}
