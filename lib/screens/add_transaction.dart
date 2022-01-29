import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  const AddTransaction({Key? key}) : super(key: key);

  @override
  _AddTransactionState createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add transaction'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      child: ClipRRect(
                        child: Image.asset('assets/person.png'),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    Text('Add a phot'),
                  ],
                ),
                Column(
                  children: [
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: TextButton(
                          onPressed: () {},
                          child: Text('Select from list'),
                        ),
                      ),
                    ),
                    Text('Full name'),
                    Text('Tel No '),
                    Text('Gmail'),
                    Text('Facebook'),
                    Text('Add new information '),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      //bottomSheet: ,
    );
  }
}
