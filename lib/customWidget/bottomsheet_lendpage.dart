import 'package:debtbook/providers/ColorProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Bottomsheetlandpage extends StatelessWidget {
  const Bottomsheetlandpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.watch<ColorProvider>().backGroundColor,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: context.watch<ColorProvider>().lendAppBarColor,
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
