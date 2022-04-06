import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final Function onpress;
  RoundIconButton({this.iconData, this.onpress});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 2.0,
      fillColor: Color(0xff4c4f5e),
      onPressed: onpress,
      shape: CircleBorder(),
      child: Icon(iconData),
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
    );
  }
}
