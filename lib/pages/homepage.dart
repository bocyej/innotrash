import 'package:flutter/material.dart';

import '../pages/rewards.dart';
import '../pages/structure.dart';
import '../pages/map.dart';

import '../layouts/homeappbar.dart';

import '../layouts/rewardsone.dart';
import '../layouts/rewardstwo.dart';
import '../layouts/rewardsthree.dart';
import '../layouts/rewardsfour.dart';
import '../layouts/home_map.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // transparent appbar
      appBar: const HomeAppbar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/photos/bg_home.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 135)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // const Padding(padding: EdgeInsets.only(left: 18)),
                const Text(
                  'Rewards',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(right: 250)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RewardsPage()),
                    );
                  },
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const RewardsOne(),
            const Padding(padding: EdgeInsets.only(bottom: 15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                RewardsTwo(),
                Padding(padding: EdgeInsets.only(right: 10)),
                RewardsThree(),
                Padding(padding: EdgeInsets.only(right: 10)),
                RewardsFour(),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 50)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Find an iNNOTrash near you',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(right: 120)),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MapPage()),
                    );
                  },
                  child: const Text(
                    'See All',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(bottom: 15)),
            const HomeMap(),
          ],
        ),
      ),
    );
  }
}
