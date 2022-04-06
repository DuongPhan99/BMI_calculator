import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {@required this.cardchild,
      @required this.colour,
      @required this.onPress});
  final Color colour;
  final Widget cardchild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
          //  width: double.infinity,
          child: cardchild,
          margin: EdgeInsets.all(15.0),
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: colour, borderRadius: BorderRadius.circular(15.0))),
    );
  }
}
