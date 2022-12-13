import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../pages/introtwo.dart';
import '../pages/introthree.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/photos/bg_1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(top: 75)),
            const Image(
              image: AssetImage("assets/photos/intro_1.png"),
              height: 300,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 30)),
            const Text(
              'PARTICIPATE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.normal,
                fontFamily: 'Sans Serif',
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const Text(
              'Help the environment by recycling your trash',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Text(
              'in an iNNOTrash near you!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 75)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const IntroThree()),
                    );
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(right: 225)),
                // insert pagemarker
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IntroTwo()),
                    );
                  },
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                    ),
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
