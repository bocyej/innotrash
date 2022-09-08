import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/rewards.dart';

class RedeemFour extends StatelessWidget {
  const RedeemFour({Key? key}) : super(key: key);

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
              children: [
                const Padding(padding: EdgeInsets.only(left: 125, top: 10)),
                const Image(
                  image: AssetImage("assets/photos/rewardssix_image.png"),
                  height: 65,
                ),
                const Padding(padding: EdgeInsets.only(bottom: 5)),
                const Text(
                  '250PHP IN-GAME TOKENS',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Sans Serif',
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 1)),
                const Text(
                  'Lorem ipsum dolor sit amet,',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Text(
                  'consectetur adipiscing',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 9,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(bottom: 5)),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 65)),
                    SizedBox(
                      height: 15,
                      width: 45,
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
                            fontSize: 8,
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
