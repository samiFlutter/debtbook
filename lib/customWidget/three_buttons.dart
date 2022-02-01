import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThreeButtons extends StatelessWidget {
  const ThreeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              //width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5.0),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye,
                    ),
                    tooltip: 'TimeLine',
                  ),
                  Text(
                    'TimeLine ',
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              // width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5.0),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.align_horizontal_center,
                    ),
                    tooltip: 'Active',
                  ),
                  Text(
                    'Active ',
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.05,
              //width: MediaQuery.of(context).size.width * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(5.0),
                shape: BoxShape.rectangle,
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.double_arrow,
                    ),
                    tooltip: 'Default ',
                  ),
                  Text(
                    'Default ',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
