import 'package:debtbook/customWidget/overview_and_text.dart';
import 'package:debtbook/customWidget/three_buttons.dart';
import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/src/provider.dart';
import 'package:debtbook/customWidget/overview_and_text.dart';

class LendContainer extends StatelessWidget {
  const LendContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          OverviewAndText(),
          Container(
            ///////divider//////////////////////////////
            color: context.watch<LendVarState>().back_ground_color,
            height: 20.0,
          ),
          ThreeButtons(),
        ],
      ),
    );
  }
}
