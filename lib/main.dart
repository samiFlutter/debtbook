import 'package:debtbook/screens/mainPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainClass());
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
      debugShowCheckedModeBanner: false,
    );
  }
}
