import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/rewards.dart';

class RedeemThree extends StatelessWidget {
  const RedeemThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 175,
        height: 225,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 13)),
                const Image(
                  image: AssetImage("assets/photos/rewardstwo_image.png"),
                  height: 105,
                ),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
                const Text(
                  '500PHP CASH',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sans Serif',
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 3)),
                const Text(
                  'Lorem ipsum dolor sit amet,',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 3)),
                const Text(
                  'consectetur adipiscing',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 5)),
                Row(
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 75)),
                    SizedBox(
                      height: 25,
                      width: 75,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                          primary: Colors.blue,
                          elevation: 0.0,
                          minimumSize: Size.zero,
                          padding: EdgeInsets.zero,
                        ),
                        child: const Text(
                          'Redeem',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
