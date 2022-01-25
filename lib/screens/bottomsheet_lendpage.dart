import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bottomsheetlandpage extends StatelessWidget {
  const Bottomsheetlandpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.watch<LendVarState>().back_ground_color,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: context.watch<LendVarState>().color_var,
            onPressed: () {
              print('add len ');
            },
            tooltip: '',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
