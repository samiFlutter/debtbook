import 'package:debtbook/customWidget/overview_and_text.dart';
import 'package:debtbook/customWidget/three_buttons.dart';
import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:debtbook/customWidget/one_debt.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';
import 'package:debtbook/customWidget/three_buttons.dart';
import 'package:debtbook/customWidget/overview_and_text.dart';

class BorrowContainer extends StatefulWidget {
  BorrowContainer({Key? key}) : super(key: key);

  @override
  State<BorrowContainer> createState() => _BorrowContainerState();
}

class _BorrowContainerState extends State<BorrowContainer> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: CustomScrollView(
      shrinkWrap: true,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
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
        ),
      ],
    ));
  }
}
