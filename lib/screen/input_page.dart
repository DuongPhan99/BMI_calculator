import 'package:flutter/material.dart';
import 'package:flutter_bmi_calculator/calculator_brain.dart';
import 'package:flutter_bmi_calculator/componets/icon_context.dart';
import 'package:flutter_bmi_calculator/model/card_base.dart';
import 'package:flutter_bmi_calculator/screen/result_page.dart';
import 'package:flutter_bmi_calculator/componets/reusable_card.dart';
import 'package:flutter_bmi_calculator/componets/round_icon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../componets/bottom_button.dart';
import '../model/contanst.dart';

class InPutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _cardbase = Provider.of<CardBase>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("BMI calculator"),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                      onPress: () {
                        _cardbase.male();
                      },
                      colour: _cardbase.selecGender == Gender.male
                          ? KactiveCardColors
                          : KinactiveCardColors,
                      cardchild: IconContext(
                        iconData: FontAwesomeIcons.mars,
                        name: "MALE",
                      )),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      _cardbase.female();
                    },
                    colour: Provider.of<CardBase>(context).selecGender ==
                            Gender.female
                        ? KactiveCardColors
                        : KinactiveCardColors,
                    cardchild: IconContext(
                      iconData: FontAwesomeIcons.venus,
                      name: "FEMALE",
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              onPress: null,
              colour: KactiveCardColors,
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "HETGHT",
                    style: KlableTextStyle,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        _cardbase.height.toString(),
                        style: Knumbertextstyle,
                      ),
                      Text(
                        "cm",
                        style: KlableTextStyle,
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Color(0xff8d8e98),
                        activeTrackColor: Colors.white,
                        thumbColor: Color(0xffeb1555),
                        overlayColor: Color(0x29eb1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0)),
                    child: Slider(
                        value: _cardbase.height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newvalue) {
                          _cardbase.sliderdata(newvalue);
                        }),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: ReusableCard(
                  onPress: null,
                  colour: KactiveCardColors,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "WEIGHT",
                        style: KlableTextStyle,
                      ),
                      Text(
                        _cardbase.weight.toString(),
                        style: Knumbertextstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RoundIconButton(
                            iconData: Icons.add,
                            onpress: () {
                              _cardbase.weightPlus();
                            },
                          ),
                          RoundIconButton(
                            iconData: Icons.remove,
                            onpress: () {
                              _cardbase.weightremove();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
                Expanded(
                    child: ReusableCard(
                  onPress: null,
                  colour: KactiveCardColors,
                  cardchild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "AGE",
                        style: KlableTextStyle,
                      ),
                      Text(
                        _cardbase.age.toString(),
                        style: Knumbertextstyle,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          RoundIconButton(
                            iconData: Icons.add,
                            onpress: () {
                              _cardbase.agePlus();
                            },
                          ),
                          RoundIconButton(
                            iconData: Icons.remove,
                            onpress: () {
                              _cardbase.ageremove();
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
          BottomButton(
            buttonTitle: "CALCULATOR",
            ontap: () {
              CalculatorBrain calc = CalculatorBrain(
                  height: _cardbase.height, weight: _cardbase.weight);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ResultPage(
                            bmiResult: calc.calculateBMI(),
                            interpretation: calc.getInterpretation(),
                            resultText: calc.getResult(),
                          )));
            },
          )
        ],
      ),
    );
  }
}
