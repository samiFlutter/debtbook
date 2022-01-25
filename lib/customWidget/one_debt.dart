import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material/material.dart';
import 'package:provider/src/provider.dart';

class OneDebt extends StatelessWidget {
  OneDebt({Key? key}) : super(key: key);
  String firstName = 'firstname', familyName = 'familyname';
  int amount = 0;
  var sinceDate = DateTime.now();
  var dueDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Row(
            children: [
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
          color: context.watch<LendVarState>().back_ground_color,
          height: 20.0,
        ),
      ],
    );
  }
}
