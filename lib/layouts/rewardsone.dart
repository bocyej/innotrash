import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/rewards.dart';

class RewardsOne extends StatelessWidget {
  const RewardsOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RewardsPage()),
          );
        },
        child: Container(
          width: 350,
          height: 150,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  const Padding(padding: EdgeInsets.only(top: 25, left: 150)),
                  const Text(
                    '50% OFF\nON ALL VOUCHERS',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Sans Serif',
                    ),
                    textAlign: TextAlign.left,
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 15)),
                  SizedBox(
                    width: 110,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RewardsPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        primary: Colors.blue,
                        elevation: 0.0,
                      ),
                      child: const Text(
                        'Get Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(padding: EdgeInsets.only(right: 35)),
              const Image(
                image: AssetImage("assets/photos/rewardsone_image.png"),
                height: 105,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
