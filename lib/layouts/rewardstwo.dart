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
                  Padding(padding: EdgeInsets.only(left: 88, top: 15)),
                  Image(
                    image: AssetImage("assets/photos/rewardstwo_image.png"),
                    height: 50,
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 5)),
                  Text(
                    'VOUCHERS TO CASH',
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
