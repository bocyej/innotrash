import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/rewards.dart';

class VouchersOne extends StatelessWidget {
  const VouchersOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          width: 125,
          height: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 125, top: 10)),
                  Image(
                    image: AssetImage("assets/photos/rewardsfour_image.png"),
                    height: 65,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5)),
                  Text(
                    '50% OFF GROCERIES',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sans Serif',
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 1)),
                  Text(
                    'Lorem ipsum dolor sit amet,',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    'consectetur adipiscing',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 9,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Text(
                    'date110525',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 7,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
