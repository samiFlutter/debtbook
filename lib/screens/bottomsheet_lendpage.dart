import 'package:flutter/material.dart';

class Bottomsheetlandpage extends StatelessWidget {
  const Bottomsheetlandpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.deepOrange,
            onPressed: () {
              print('add len ');
            },
            tooltip: '',
            child: const Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
