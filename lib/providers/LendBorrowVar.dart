import 'package:flutter/cupertino.dart' show ChangeNotifier, Color;
import 'package:flutter/material.dart';

class LendVarState with ChangeNotifier {
  // ignore: non_constant_identifier_names
  var lend_var = true;
  // ignore: non_constant_identifier_names
  Color color_var = Colors.deepOrange;

  Color? back_ground_color = Colors.green[50];
  Color? back_ground_color1 = Colors.green[50];
  void trueLendVar() {
    lend_var = true;
    color_var = Colors.deepOrange;
    print('$lend_var');
    back_ground_color = Colors.orange[200];
    //notifyListeners();
  }

  void falseLendVar() {
    lend_var = false;
    color_var = Colors.green;
    print('$lend_var');
    back_ground_color = Colors.green[200];
    //notifyListeners();
  }

  void trueLendVar1() {
    lend_var = true;

    print('$lend_var');
    back_ground_color1 = Colors.orange[200];
    //notifyListeners();
  }

  void falseLendVar1() {
    lend_var = false;

    print('$lend_var');
    back_ground_color1 = Colors.green[200];
    //snotifyListeners();
  }
}
