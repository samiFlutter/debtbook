import 'package:flutter/cupertino.dart' show ChangeNotifier, Color;
import 'package:flutter/material.dart';

class LendVarState with ChangeNotifier {
  // ignore: non_constant_identifier_names

  // ignore: non_constant_identifier_names
  Color color_var = Colors.deepOrange;

  Color? back_ground_color = Colors.grey[50];
  Color? back_ground_color1 = Colors.grey[50];
  Color trueLendVar() {
    color_var = Colors.deepOrange;

    back_ground_color = Colors.orange[200];
    notifyListeners();
    return color_var;
  }

  Color falseLendVar() {
    color_var = Colors.green;
    back_ground_color = Colors.green[200];
    notifyListeners();
    return color_var;
  }

  void trueLendVar1() {
    color_var = Colors.deepOrange;
    back_ground_color1 = Colors.orange[200];
    notifyListeners();
  }

  void falseLendVar1() {
    color_var = Colors.green;
    back_ground_color1 = Colors.green[200];
    notifyListeners();
  }
}
