import 'package:debtbook/hive_doc/one.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveFunctions {
  late final Box debt_list;
  late One my_one_debt;
  HiveFunctions() {
    debt_list = Hive.box('debt_list');
  }
// DateTime.utc(1989, 11, 9)
  void create_function(String name, DateTime date) {
    my_one_debt = One(name: name, date: date);
    debt_list.put('name', my_one_debt);
  }

  One read_function(String _key) {
    return debt_list.get(_key);
  }

  void update_function(String _key, One _onedebt) {
    debt_list.delete(_key);
    debt_list.put(_key, _onedebt);
  }

  void delete_function(String _key) {
    debt_list.delete(_key);
  }
}
