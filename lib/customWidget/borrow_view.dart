import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:debtbook/screens/borrow_body.dart';
import 'package:debtbook/screens/lend_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class BorrowView extends StatefulWidget {
  const BorrowView({Key? key}) : super(key: key);

  @override
  _BorrowViewState createState() => _BorrowViewState();
}

class _BorrowViewState extends State<BorrowView> {
  @override
  void initState() {
    context.read<LendVarState>().falseLendVar();
    context.read<LendVarState>().falseLendVar1();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
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
                height: MediaQuery.of(context).size.height,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
