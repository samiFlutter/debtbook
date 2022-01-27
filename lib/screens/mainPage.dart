import 'dart:ffi';
import 'package:debtbook/customWidget/borrow_view.dart';
import 'package:debtbook/customWidget/lend_view.dart';
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
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
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
              /////////////////////////////////////////////////////////////////////////////////
              bottom: const TabBar(
                tabs: [
                  Tab(
                    child: Text(
                      'Lend',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Borrow',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              /////////////////////////////////////////////////////////////////////////////////
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
            body: const TabBarView(
              children: [
                LendView(),
                BorrowView(),
              ],
            ), ///////////////////////////////////////////////bottomsheet//////////////////////////////////////////////////////
            bottomSheet: (context.watch<LendVarState>().lend_var == true)
                ? Bottomsheetlandpage()
                : BottomsheetBorrowpage()),
      ),
    );
  }
}
