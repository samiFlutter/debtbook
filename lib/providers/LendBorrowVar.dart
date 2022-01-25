import 'package:flutter/cupertino.dart' show ChangeNotifier, Color;
import 'package:flutter/material.dart';

class LendVarState with ChangeNotifier {
  // ignore: non_constant_identifier_names
  var lend_var = false;
  // ignore: non_constant_identifier_names
  Color color_var = Colors.deepOrange;

  void trueLendVar() {
    lend_var = true;
    color_var = Colors.deepOrange;
    print('$lend_var');
    notifyListeners();
  }

  void falseLendVar() {
    lend_var = false;
    color_var = Colors.green;
    print('$lend_var');
    notifyListeners();
  }
}
