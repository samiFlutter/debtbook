import 'package:debtbook/customWidget/borrow_view.dart';
import 'package:debtbook/customWidget/lend_view.dart';
import 'package:debtbook/providers/LendBorrowVar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  late Color color_app_bar = Colors.deepOrange;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
    controller.addListener(() {
      setState(() {
        if (controller.index == 0) {
          color_app_bar = Colors.deepOrange;
        } else {
          color_app_bar = Colors.green;
        }
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        ///////////////////////////////////////////appbar/////////////////////////////////////////////////////
        appBar: AppBar(
          backgroundColor: color_app_bar,
          leading: IconButton(
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: Text(
            '',
          ),
          /////////////////////////////////////////////////////////////////////////////////
          bottom: TabBar(
            controller: controller,
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
        body: TabBarView(
          controller: controller,
          children: [
            LendView(),
            BorrowView(),
          ],
        ), ///////////////////////////////////////////////bottomsheet//////////////////////////////////////////////////////
      ),
    );
  }
}
