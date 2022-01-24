import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(5.0),
        shape: BoxShape.rectangle,
      ),
      child: TextButton(
          onPressed: () {
            print('timeline button');
          },
          child: Text('lend')),
    );
  }
}
