import 'dart:ffi';

import 'package:debtbook/screens/borrow_card.dart';
import 'package:debtbook/screens/lend_card.dart';
import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
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
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RaisedButton(
                  color: Colors.deepOrange,
                  padding: EdgeInsets.fromLTRB(
                      0, 0, MediaQuery.of(context).size.height * 0.2, 0),
                  child: Center(
                    child: Text(
                      'lend',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {
                    lendvar = true;
                    setState(() {});
                  }),
              RaisedButton(
                  color: Colors.deepOrange,
                  padding: EdgeInsets.fromLTRB(
                      0, 0, MediaQuery.of(context).size.height * 0.2, 0),
                  child: Center(
                    child: Text(
                      'borrow',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  onPressed: () {
                    lendvar = false;
                    setState(() {});
                  }),
            ],
          ),
          Container(
            child: (lendvar == true) ? LendContainer() : BorrowContainer(),
          )
        ],
      ),
      // bottomSheet: Column(
      //   mainAxisAlignment: MainAxisAlignment.end,
      //   children: [
      //     Row(
      //       mainAxisAlignment: MainAxisAlignment.end,
      //       children: [
      //         FloatingActionButton(
      //           backgroundColor: Colors.deepOrange,
      //           onPressed: () {},
      //           tooltip: '',
      //           child: const Icon(Icons.add),
      //         ),
      //       ],
      //     ),
      //     SizedBox(
      //       height: 10,
      //     )
      //   ],
      // ),
    );
  }
}
