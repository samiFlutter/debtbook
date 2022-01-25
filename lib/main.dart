import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:debtbook/providers/provider_test.dart';
import 'package:debtbook/screens/debt.dart';
import 'package:debtbook/screens/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LendVarState()),
      ],
      child: const MainClass(),
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
      home: MainPage(),
      // home: OneDebt(),
      debugShowCheckedModeBanner: false,
    );
  }
}
