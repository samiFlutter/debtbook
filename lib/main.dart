import 'package:debtbook/providers/ColorProvider.dart';
import 'package:debtbook/customWidget/one_debt.dart';
import 'package:debtbook/hive_doc/one.dart';
import 'package:debtbook/providers/dimensionProvider.dart';
import 'package:debtbook/screens/add_transaction.dart';
import 'package:debtbook/screens/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(OneAdapter());
  await Hive.openBox('debt_list');
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ColorProvider()),
          ChangeNotifierProvider(create: (_) => DimensionProvider()),
        ],
        child: MainClass(),
      ),
    ),
  );
}

class MainClass extends StatefulWidget {
  const MainClass({Key? key}) : super(key: key);

  @override
  _MainClassState createState() => _MainClassState();
}

class _MainClassState extends State<MainClass> {
  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MainPage();
  }
}
