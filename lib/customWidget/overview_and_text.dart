import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OverviewAndText extends StatelessWidget {
  const OverviewAndText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Overview'),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                )
              ],
            )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('total lend amount '),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('0.00\$'),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('collected '),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('0.00\$'),
            ),
          ],
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Remaining'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('0.00\$'),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Divider(
            color: Colors.black,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
