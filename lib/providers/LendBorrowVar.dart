import 'package:flutter/cupertino.dart' show ChangeNotifier;

class LendVarState with ChangeNotifier {
  // ignore: non_constant_identifier_names
  var lend_var = false;

  void trueLendVar() {
    lend_var = true;
    print('$lend_var');
    notifyListeners();
  }

  void falseLendVar() {
    lend_var = false;
    print('$lend_var');
    notifyListeners();
  }
}
