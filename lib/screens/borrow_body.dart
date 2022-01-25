import 'package:debtbook/customWidget/overview_and_text.dart';
import 'package:debtbook/customWidget/three_buttons.dart';
import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:debtbook/customWidget/one_debt.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:debtbook/customWidget/three_buttons.dart';
import 'package:debtbook/customWidget/overview_and_text.dart';

class BorrowContainer extends StatelessWidget {
  const BorrowContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //to make a backgound color
      color: Colors.white,
      child: Column(
        children: [
          OverviewAndText(),
          Container(
            ///////divider//////////////////////////////
            color: context.watch<LendVarState>().back_ground_color,
            height: 20.0,
          ),

          //////////////////////////////////////////////container three buttons timeline active default  ////////////////////////////
          ThreeButtons(),
          //////////////////////////////////////////////container three buttons timeline active default  ////////////////////////////
          Container(
            ///////divider//////////////////////////////
            color: context.watch<LendVarState>().back_ground_color,
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
