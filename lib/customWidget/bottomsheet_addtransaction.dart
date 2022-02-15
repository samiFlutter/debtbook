import 'package:debtbook/hive_doc/one.dart';
import 'package:debtbook/providers/ColorProvider.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/src/provider.dart';

class BottomsheetAddTrans extends StatefulWidget {
  const BottomsheetAddTrans({Key? key}) : super(key: key);

  @override
  State<BottomsheetAddTrans> createState() => _BottomsheetAddTransState();
}

class _BottomsheetAddTransState extends State<BottomsheetAddTrans> {
  late Box debt_list;
  late One oneDebt;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    debt_list = Hive.box('debt_list');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.watch<ColorProvider>().backGroundColor,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: context.watch<ColorProvider>().borrowAppBarColor,
            onPressed: () {
              context.read<ColorProvider>().lendVarFalse();
              oneDebt = One(name: 'test', date: DateTime.utc(1989, 11, 9));
              debt_list.put(oneDebt.name, oneDebt);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => const AddTransaction()),
              // );
            },
            tooltip: '',
            child: const Icon(Icons.check),
          ),
        ],
      ),
    );
  }
}
