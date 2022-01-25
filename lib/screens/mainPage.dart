import 'dart:ffi';
import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:debtbook/screens/borrow_body.dart';
import 'package:debtbook/screens/bottomsheet_lendpage.dart';
import 'package:debtbook/screens/lend_body.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'bottomsheet_borrowpage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool lendvar = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        ///////////////////////////////////////////appbar/////////////////////////////////////////////////////
        appBar: AppBar(
          backgroundColor: context.watch<LendVarState>().color_var,
          leading: IconButton(
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text(
            '',
          ),
          actions: [
            IconButton(
              tooltip: '',
              icon: const Icon(
                Icons.search,
              ),
              onPressed: () {},
            ),
          ],
        ),

        ///////////////////////////////////////////////////body////////////////////////////////////////////////
        body: Container(
          color: context.watch<LendVarState>().back_ground_color,
          child: Column(
            children: [
              /////////////////////////////////////////len and borrow buttons //////////////////////////
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: context.watch<LendVarState>().color_var,
                        borderRadius: BorderRadius.circular(5.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: TextButton(
                          child: Text(
                            'lend',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20.0,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          onPressed: () {
                            context.read<LendVarState>().trueLendVar();
                          }),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
                      decoration: BoxDecoration(
                        color: context.watch<LendVarState>().color_var,
                        borderRadius: BorderRadius.circular(5.0),
                        shape: BoxShape.rectangle,
                      ),
                      child: TextButton(
                        onPressed: () {
                          context.read<LendVarState>().falseLendVar();
                        },
                        child: Text(
                          'borrow',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              /////////////////////////////////end tow button lend and borrrow ///////////////////////////

              Container(
                child: (context.watch<LendVarState>().lend_var == true)
                    ? LendContainer()
                    : BorrowContainer(),
              ),
              Container(
                color: context.watch<LendVarState>().back_ground_color,
                height: 20.0,
              ),
            ],
          ),
        ),

        ///////////////////////////////////////////////bottomsheet//////////////////////////////////////////////////////
        bottomSheet: (context.watch<LendVarState>().lend_var == true)
            ? Bottomsheetlandpage()
            : BottomsheetBorrowpage());
  }
}
