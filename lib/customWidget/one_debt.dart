import 'package:debtbook/providers/ColorProvider.dart';
import 'package:debtbook/providers/dimensionProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material/material.dart';
import 'package:provider/src/provider.dart';

class OneDebt extends StatelessWidget {
  OneDebt({
    Key? key,
    required Color color,
  }) : super(key: key) {
    this.sideColor = color;
    // TODO: implement
  }
  String firstName = 'firstname', familyName = 'familyname';
  int amount = 0;
  var sinceDate = DateTime.now();
  var dueDate = DateTime.now();
  Color? sideColor = Colors.amberAccent;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 5,
                height: 40,
                color: sideColor,
              ),
              CircleAvatar(
                radius: 16.0,
                child: ClipRRect(
                  child: Image.asset('assets/person.png'),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
            ],
          ),
        ),
        Container(
          ///////divider//////////////////////////////
          color: context.watch<ColorProvider>().backGroundColor,
          height: context.watch<DimensionProvider>().separateurHeight,
        ),
      ],
    );
  }
}
