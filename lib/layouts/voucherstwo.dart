import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../pages/rewards.dart';

class VouchersTwo extends StatelessWidget {
  const VouchersTwo({Key? key}) : super(key: key);

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
                    image: AssetImage("assets/photos/rewardsthree_image.png"),
                    height: 105,
                  ),
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  const Text(
                    '10% OFF CLOTHING',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
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
                  const Padding(padding: EdgeInsets.only(bottom: 10)),
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.only(left: 85)),
                      Text(
                        'date110525',
                        style: TextStyle(
                          color: Colors.grey.shade700,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
