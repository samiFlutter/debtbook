import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:debtbook/customWidget/one_debt.dart';
import 'package:debtbook/customWidget/one_debt.dart';
import 'package:debtbook/screens/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LendVarState()),
      ],
      child: MainClass(),
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      // home: OneDebt(),
    );
  }
}
