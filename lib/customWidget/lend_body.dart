import 'package:debtbook/customWidget/one_debt.dart';
import 'package:debtbook/customWidget/overview_and_text.dart';
import 'package:debtbook/customWidget/three_buttons.dart';
import 'package:debtbook/hive_doc/one.dart';
import 'package:debtbook/providers/ColorProvider.dart';
import 'package:debtbook/providers/dimensionProvider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/src/provider.dart';

class LendContainer extends StatefulWidget {
  @override
  State<LendContainer> createState() => _LendContainerState();
}

class _LendContainerState extends State<LendContainer> {
  late final Box debt_list;

  @override
  void initState() {
    super.initState();
    debt_list = Hive.box('debt_list');
  }

  late One mone;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OverviewAndText(),
        ThreeButtons(),
        ValueListenableBuilder(
          valueListenable: debt_list.listenable(),
          builder: (context, Box box, widget) {
            if (box.isEmpty) {
              return Center(
                child: Text('Empty'),
              );
            } else {
              return Container(
                child: Text('${box.getAt(0)}'),
              );
              // ListView.builder(
              //   itemCount: box.length,
              //   itemBuilder: (context, index) {
              //     var currentBox = box;
              //     var personData = currentBox.getAt(index)!;

              //     return OneDebt(
              //       color: context.watch<ColorProvider>().lendAppBarColor,
              //       name: 'test',
              //       Mdate: DateTime.utc(1989, 11, 9),
              //     );
              //   },
              // );
            }
          },
        ),
        // OneDebt(
        //   color: context.watch<ColorProvider>().lendAppBarColor,
        // ),
        // OneDebt(
        //   color: context.watch<ColorProvider>().lendAppBarColor,
        // ),
      ],
    );
  }
}
