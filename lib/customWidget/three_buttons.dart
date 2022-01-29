import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThreeButtons extends StatelessWidget {
  const ThreeButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
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
    );
  }
}
