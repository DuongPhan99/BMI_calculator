import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/model/contanst.dart';
import 'package:flutter_bmi_calculator/componets/reusable_card.dart';

import '../componets/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult, this.interpretation, this.resultText});
  final String resultText;
  final String interpretation;
  final String bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KinactiveCardColors,
        elevation: 2.0,
        title: Text(
          "BMI CALCULATOR",
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                "Your Result",
                style: Ktextresult,
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: ReusableCard(
                colour: KinactiveCardColors,
                cardchild: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      resultText.toUpperCase(),
                      style: TextStyle(color: Colors.green, fontSize: 20.0),
                    ),
                    Text(bmiResult, style: Kbmitextstyle),
                    Text(
                      interpretation,
                      style: Kbodytextstyle,
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              )),
          BottomButton(
              buttonTitle: "RE-CALCULATE",
              ontap: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
