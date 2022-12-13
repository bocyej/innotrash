import 'package:flutter/material.dart';

import '../pages/rewards.dart';

class RewardsFour extends StatelessWidget {
  const RewardsFour({Key? key}) : super(key: key);

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
          width: 110,
          height: 105,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: const [
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Image(
                    image: AssetImage("assets/photos/rewardsfour_image.png"),
                    height: 65,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5)),
                  Text(
                    'USE YOUR VOUCHERS',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 9,
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
