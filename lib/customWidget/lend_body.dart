import 'package:debtbook/customWidget/one_debt.dart';
import 'package:debtbook/customWidget/overview_and_text.dart';
import 'package:debtbook/customWidget/three_buttons.dart';
import 'package:debtbook/providers/ColorProvider.dart';
import 'package:debtbook/providers/dimensionProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';

class LendContainer extends StatelessWidget {
  const LendContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OverviewAndText(),
        ThreeButtons(),
        OneDebt(
          color: context.watch<ColorProvider>().lendAppBarColor,
        ),
        OneDebt(
          color: context.watch<ColorProvider>().lendAppBarColor,
        ),
      ],
    );
  }
}
