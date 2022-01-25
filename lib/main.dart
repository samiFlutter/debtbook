import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:debtbook/providers/provider_test.dart';
<<<<<<< HEAD
<<<<<<< HEAD
import 'package:debtbook/customWidget/one_debt.dart';
=======
>>>>>>> parent of 6ace4db (before adding scrolbar)
=======
>>>>>>> parent of 6ace4db (before adding scrolbar)
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
      //home: MainPage(),
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
