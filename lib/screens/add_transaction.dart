import 'package:debtbook/customWidget/bottomsheet_addtransaction.dart';
import 'package:debtbook/providers/ColorProvider.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  bool isChecked = false;

  late TextEditingController? _full_name_controller;
  late TextEditingController? _tell_no_controller;
  late TextEditingController? _gmail_controller;
  late TextEditingController? _facebook_controller;
  late TextEditingController? _loan_amount_controller;
  late TextEditingController? _description_controller;

  // ignore: non_constant_identifier_names
  late double? column_width = 200.0;
  double column_height = 20.0;
  @override
  void initState() {
    super.initState();

    _description_controller = TextEditingController();
    _loan_amount_controller = TextEditingController();
    _full_name_controller = TextEditingController();
    _tell_no_controller = TextEditingController();
    _gmail_controller = TextEditingController();
    _facebook_controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (context.watch<ColorProvider>().lend_var)
            ? context.watch<ColorProvider>().lendAppBarColor
            : context.watch<ColorProvider>().borrowAppBarColor,
        title: const Text('Add transaction'),
      ),
      body: ListView(
        children: [
          Card(
            child: Container(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //left part
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.account_circle,
                        size: 80.0,
                      ),
                      const Text('Add a phota'),
                    ],
                  ),

                  //right part of page
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Container(
                          width: column_width,
                          height: 30,
                          decoration: BoxDecoration(
                              color: (context.watch<ColorProvider>().lend_var)
                                  ? context
                                      .watch<ColorProvider>()
                                      .lendAppBarColor
                                  : context
                                      .watch<ColorProvider>()
                                      .borrowAppBarColor,
                              borderRadius: BorderRadius.circular(5.0)),
                          child: TextButton(
                            onPressed: () {},
                            child: const Text('Select from list'),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Full name'),
                      ),
                      Container(
                        height: column_height,
                        width: column_width,
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.account_circle)),
                          controller: _full_name_controller,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Tel No '),
                      ),
                      Container(
                        height: column_height,
                        width: column_width,
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Icon(Icons.local_phone)),
                          controller: _tell_no_controller,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Gmail'),
                      ),
                      Container(
                        height: column_height,
                        width: column_width,
                        child: TextField(
                          decoration: InputDecoration(
                              suffixIcon: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 2),
                            child: Icon(Icons.alternate_email),
                          )),
                          controller: _gmail_controller,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text('Facebook'),
                      ),
                      Container(
                        height: column_height,
                        width: column_width,
                        child: TextField(
                          decoration:
                              InputDecoration(suffixIcon: Icon(Icons.facebook)),
                          controller: _facebook_controller,
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: isChecked,
                              onChanged: (value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Text('Add new information')
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 40,
                    decoration: BoxDecoration(
                        color: (context.watch<ColorProvider>().lend_var)
                            ? context.watch<ColorProvider>().lendAppBarColor
                            : context.watch<ColorProvider>().borrowAppBarColor,
                        borderRadius: BorderRadius.circular(5.0)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: (context.watch<ColorProvider>().lend_var)
                                  ? Colors.white
                                  : context
                                      .watch<ColorProvider>()
                                      .borrowAppBarColor,
                              borderRadius: BorderRadius.circular(6.0)),
                          height: 30,
                          child: TextButton(
                            onPressed: () {
                              context.read<ColorProvider>().lenVarTrue();
                            },
                            child: const Text('lend'),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: (context.watch<ColorProvider>().lend_var ==
                                      false)
                                  ? Colors.white
                                  : context
                                      .watch<ColorProvider>()
                                      .lendAppBarColor,
                              borderRadius: BorderRadius.circular(6.0)),
                          height: 30,
                          child: TextButton(
                            onPressed: () {
                              context.read<ColorProvider>().lendVarFalse();
                            },
                            child: const Text('Borrow'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Loan amount '),
                ),
                Container(
                  height: column_height,
                  width: MediaQuery.of(context).size.width,
                  child: TextField(
                    decoration:
                        InputDecoration(suffixIcon: Icon(Icons.attach_money)),
                    controller: _loan_amount_controller,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text('Descriptions '),
                ),
                Container(
                  height: column_height,
                  width: MediaQuery.of(context).size.width * 1.1,
                  child: TextField(
                    controller: _description_controller,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Record in book ',
                      ),
                      Row(
                        children: [
                          Text('Master Book  '),
                          Icon(Icons.keyboard_arrow_right_sharp),
                        ],
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date of loan  ',
                      ),
                      Row(
                        children: [
                          Text('${date_function()} '),
                          Icon(Icons.calendar_today_rounded),
                        ],
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Payment due date  ',
                      ),
                      Row(
                        children: [
                          Text('${date_function()} '),
                          Icon(Icons.calendar_today_rounded),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Attach a photo'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        print('from gallery ');
                      },
                      child: Icon(Icons.collections_outlined),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.05,
                      width: 2,
                      color: Colors.grey,
                    ),
                    TextButton(
                      onPressed: () {
                        print('open camera ');
                      },
                      child: Icon(Icons.camera_alt),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      bottomSheet: BottomsheetAddTrans(),
    );
  }

  String date_function() {
    var now = new DateTime.now();
    var formatter = new DateFormat('yyyy-MM-dd');
    String formattedDate = formatter.format(now);
    return formattedDate;
  }
}
