// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:day24/resources/constants.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SettingsProvider with ChangeNotifier {
  double fontSize = 19;

  Color selectedColor = pColor;

  Color selectedColorSec = Colors.black;

  String dropdownValue = "Roboto";

  List<Color> pColors = [
    Colors.deepPurple,
    Colors.deepOrange,
    Colors.teal,
    Colors.green,
  ];

  List<String> fontFamily = [
    "Roboto",
    "OpenSans",
    "Montserrat",
    "Tahoma",
    "TimesRoman"
  ];

  List<Color> sColors = [
    Colors.black,
    Colors.red,
    Colors.blue,
    Colors.yellow,
  ];

  void switchFontFamily(String font) {
    dropdownValue = font;
    notifyListeners();
  }

  void switchRadioPrim(Color value) {
    selectedColor = value;
    notifyListeners();
  }

  void switchRadioSec(Color value) {
    selectedColorSec = value;
    notifyListeners();
  }

  increFontSize() {
    fontSize++;
    notifyListeners();
  }

  decreFontSize() {
    fontSize--;
    notifyListeners();
  }

  SettingsProvider();
}
