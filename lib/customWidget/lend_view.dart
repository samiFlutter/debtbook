import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:debtbook/screens/borrow_body.dart';
import 'package:debtbook/screens/lend_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class LendView extends StatefulWidget {
  const LendView({Key? key}) : super(key: key);

  @override
  _LendViewState createState() => _LendViewState();
}

class _LendViewState extends State<LendView> {
  @override
  void initState() {
    context.read<LendVarState>().trueLendVar();
    context.read<LendVarState>().trueLendVar1();
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
                child: LendContainer(),
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
