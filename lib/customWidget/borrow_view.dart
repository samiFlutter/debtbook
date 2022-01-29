import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:debtbook/screens/borrow_body.dart';
import 'package:debtbook/screens/bottomsheet_borrowpage.dart';

import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class BorrowView extends StatefulWidget {
  const BorrowView({Key? key}) : super(key: key);

  @override
  _BorrowViewState createState() => _BorrowViewState();
}

class _BorrowViewState extends State<BorrowView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: context.watch<LendVarState>().back_ground_color1,
            child: Column(
              children: [
                Container(
                  child: BorrowContainer(),
                ),
                Container(
                  color: context.watch<LendVarState>().back_ground_color1,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomsheetBorrowpage(),
    );
  }
}
