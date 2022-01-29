import 'package:debtbook/providers/ColorProvider.dart';
import 'package:debtbook/customWidget/borrow_body.dart';
import 'package:debtbook/customWidget/bottomsheet_lendpage.dart';
import 'package:debtbook/customWidget/lend_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class LendView extends StatefulWidget {
  const LendView({Key? key}) : super(key: key);

  @override
  _LendViewState createState() => _LendViewState();
}

class _LendViewState extends State<LendView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: context.watch<ColorProvider>().backGroundColor,
            child: Column(
              children: [
                Container(
                  child: LendContainer(),
                ),
                Container(
                  color: context.watch<ColorProvider>().backGroundColor,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Bottomsheetlandpage(),
    );
    ;
  }
}
