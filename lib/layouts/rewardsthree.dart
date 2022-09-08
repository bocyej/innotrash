import 'package:flutter/material.dart';

import '../pages/rewards.dart';

class RewardsThree extends StatelessWidget {
  const RewardsThree({Key? key}) : super(key: key);

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
          width: 88,
          height: 90,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: const [
                  Padding(padding: EdgeInsets.only(left: 88, top: 7)),
                  Image(
                    image: AssetImage("assets/photos/rewardsthree_image.png"),
                    height: 60,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 3)),
                  Text(
                    'CLAIM VOUCHERS',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 7,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
