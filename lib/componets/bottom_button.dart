import 'package:flutter/material.dart';

import '../model/contanst.dart';

class BottomButton extends StatelessWidget {
  final String buttonTitle;
  final Function ontap;
  BottomButton({@required this.buttonTitle, @required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: KbottomContainerHeight,
        width: double.infinity,
        decoration: BoxDecoration(
          color: KbottomContainerColor,
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
