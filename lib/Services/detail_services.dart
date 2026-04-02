import 'package:flutter/material.dart';

class DetailServices extends ChangeNotifier {
  bool button1Pressed = false;
  bool button2Pressed = false;

  void toggleButton1() {
    button1Pressed = true;
    notifyListeners();
  }

  void toggleButton2() {
    button2Pressed = true;
    notifyListeners();
  }
}
