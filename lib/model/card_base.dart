import 'package:flutter/cupertino.dart';
import 'package:flutter_bmi_calculator/model/contanst.dart';

enum Gender { male, female }

class CardBase extends ChangeNotifier {
  Gender selecGender;
  int height = 180;
  int weight = 60;
  int age = 19;

  void male() {
    selecGender = Gender.male;
    notifyListeners();
  }

  void female() {
    selecGender = Gender.male;
    notifyListeners();
  }

  void colorMale() {
    selecGender == Gender.male ? KactiveCardColors : KinactiveCardColors;
  }

  void coloFemale() {
    selecGender == Gender.female ? KactiveCardColors : KinactiveCardColors;
  }

  void sliderdata(double newvalue) {
    height = newvalue.round();
    notifyListeners();
  }

  void agePlus() {
    age++;
    notifyListeners();
  }

  void ageremove() {
    age--;
    notifyListeners();
  }

  void weightPlus() {
    weight++;
    notifyListeners();
  }

  void weightremove() {
    weight--;
    notifyListeners();
  }
}
