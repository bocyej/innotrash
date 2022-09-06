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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 160)),
            const Image(
              image: AssetImage("assets/photos/intro_1.png"),
              height: 225,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            const Text(
              'PARTICIPATE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.normal,
                fontFamily: 'Sans Serif',
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 5)),
            const Text(
              'Help the environment by recycling your trash',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Text(
              'in an iNNOTrash near you!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IntroThree()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF2F7CFF),
                    elevation: 0.0,
                  ),
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                // insert pagemarker
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IntroTwo()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF2F7CFF),
                    elevation: 0.0,
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
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
