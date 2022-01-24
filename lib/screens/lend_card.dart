import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LendContainer extends StatelessWidget {
  const LendContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.orange,
        ),
        Column(
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
            SizedBox(
              width: MediaQuery.of(context).size.width,
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
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.remove_red_eye,
                        ),
                        TextButton(
                            onPressed: () {
                              print('timeline button');
                            },
                            child: Text('TimeLine')),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.align_horizontal_center,
                        ),
                        TextButton(
                            onPressed: () {
                              print('Active button ');
                            },
                            child: Text('Active')),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                      shape: BoxShape.rectangle,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.double_arrow,
                        ),
                        TextButton(
                            onPressed: () {
                              print('Default button');
                            },
                            child: Text('Default')),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
