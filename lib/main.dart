import 'package:debtbook/providers/ColorProvider.dart';
import 'package:debtbook/customWidget/one_debt.dart';
import 'package:debtbook/customWidget/one_debt.dart';
import 'package:debtbook/providers/dimensionProvider.dart';
import 'package:debtbook/screens/add_transaction.dart';
import 'package:debtbook/screens/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ColorProvider()),
          ChangeNotifierProvider(create: (_) => DimensionProvider()),
        ],
        child: MainClass(),
      ),
    ),
  );
}

class MainClass extends StatefulWidget {
  const MainClass({Key? key}) : super(key: key);

  @override
  _MainClassState createState() => _MainClassState();
}

class _MainClassState extends State<MainClass> {
  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}
