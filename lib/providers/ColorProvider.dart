import 'package:flutter/cupertino.dart' show ChangeNotifier, Color;
import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  Color lendAppBarColor = Colors.deepOrange;
  Color borrowAppBarColor = Colors.green;
  Color? backGroundColor = Colors.grey[300];
  bool lend_var = true;

  void lenVarTrue() {
    lend_var = true;
    notifyListeners();
  }

  void lendVarFalse() {
    lend_var = false;
    notifyListeners();
  }
}
