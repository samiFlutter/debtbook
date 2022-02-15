import 'package:debtbook/providers/ColorProvider.dart';
import 'package:debtbook/providers/dimensionProvider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material/material.dart';
import 'package:provider/src/provider.dart';

class OneDebt extends StatelessWidget {
  var name;

  var date;

  OneDebt({
    Key? key,
    required Color color,
    required String name,
    required DateTime Mdate,
  }) : super(key: key) {
    this.sideColor = color;
    this.name = name;
    this.date = date;
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
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 5,
                height: MediaQuery.of(context).size.height * 0.05,
                color: sideColor,
              ),
              CircleAvatar(
                radius: 16.0,
                child: ClipRRect(
                  child: Image.asset('assets/person.png'),
                  borderRadius: BorderRadius.circular(50.0),
                ),
              ),
              Expanded(child: Container()),
              Column(children: [
                Text('$name'),
                Text('$date'),
              ]),
            ],
          ),
        ),
        // Container(
        //   ///////divider//////////////////////////////
        //   color: context.watch<ColorProvider>().backGroundColor,
        //   height: context.watch<DimensionProvider>().separateurHeight,
        // ),
      ],
    );
  }
}
