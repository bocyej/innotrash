import 'package:flutter/material.dart';

import '../pages/rewards.dart';

class RewardsTwo extends StatelessWidget {
  const RewardsTwo({Key? key}) : super(key: key);

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
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Image(
                    image: AssetImage("assets/photos/rewardstwo_image.png"),
                    height: 55,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  Text(
                    'VOUCHERS TO CASH',
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
