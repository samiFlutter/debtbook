import 'package:debtbook/providers/ColorProvider.dart';
import 'package:debtbook/customWidget/borrow_body.dart';
import 'package:debtbook/customWidget/bottomsheet_borrowpage.dart';

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
            color: context.watch<ColorProvider>().backGroundColor,
            child: Column(
              children: [
                BorrowContainer(),
                Container(
                  color: context.watch<ColorProvider>().backGroundColor,
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
