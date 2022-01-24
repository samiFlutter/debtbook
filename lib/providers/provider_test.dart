import 'package:flutter/material.dart';
import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:provider/provider.dart';

class testProvider extends StatelessWidget {
  const testProvider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              return context.read<LendVarState>().trueLendVar();
            },
            child: Text('true'),
          ),
          TextButton(
            onPressed: () {
              return context.read<LendVarState>().falseLendVar();
            },
            child: Text('false'),
          ),
          Text('${context.watch<LendVarState>().lend_var}'),
        ],
      ),
    );
  }
}
