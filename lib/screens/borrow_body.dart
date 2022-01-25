import 'package:flutter/material.dart';

class BorrowContainer extends StatefulWidget {
  const BorrowContainer({Key? key}) : super(key: key);

  @override
<<<<<<< HEAD
  State<BorrowContainer> createState() => _BorrowContainerState();
}

class _BorrowContainerState extends State<BorrowContainer> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: CustomScrollView(
      shrinkWrap: true,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                OverviewAndText(),
                Container(
                  ///////divider//////////////////////////////
                  color: context.watch<LendVarState>().back_ground_color,
                  height: 20.0,
                ),
                //////////////////////////////////////////////container three buttons timeline active default  ////////////////////////////
                ThreeButtons(),
                //////////////////////////////////////////////container three buttons timeline active default  ////////////////////////////
                Container(
                  ///////divider//////////////////////////////
                  color: context.watch<LendVarState>().back_ground_color,
                  height: 20.0,
                ),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
                OneDebt(),
              ],
            ),
          ),
        ),
      ],
    ));
=======
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
>>>>>>> parent of 6ace4db (before adding scrolbar)
  }
}
