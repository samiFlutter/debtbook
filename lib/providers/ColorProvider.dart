import 'package:flutter/cupertino.dart' show ChangeNotifier, Color;
import 'package:flutter/material.dart';

class ColorProvider with ChangeNotifier {
  Color lendAppBarColor = Colors.deepOrange;
  Color borrowAppBarColor = Colors.green;
  Color? backGroundColor = Colors.grey[300];
}
