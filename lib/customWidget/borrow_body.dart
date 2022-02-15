import 'package:debtbook/customWidget/overview_and_text.dart';
import 'package:debtbook/customWidget/three_buttons.dart';
import 'package:debtbook/providers/ColorProvider.dart';
import 'package:debtbook/customWidget/one_debt.dart';
import 'package:debtbook/providers/dimensionProvider.dart';
import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:provider/src/provider.dart';

import 'bottomsheet_borrowpage.dart';

class BorrowContainer extends StatefulWidget {
  BorrowContainer({Key? key}) : super(key: key);

  @override
  State<BorrowContainer> createState() => _BorrowContainerState();
}

class _BorrowContainerState extends State<BorrowContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OverviewAndText(),

        //////////////////////////////////////////////container three buttons timeline active default  ////////////////////////////
        ThreeButtons(),
        //////////////////////////////////////////////container three buttons timeline active default  ////////////////////////////
      ],
    );
  }
}
