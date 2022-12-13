import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../pages/introthree.dart';

class IntroTwo extends StatelessWidget {
  const IntroTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/photos/bg_4.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(top: 75)),
            const Image(
              image: AssetImage("assets/photos/intro_2.png"),
              height: 400,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 30)),
            const Text(
              'GAIN BENEFITS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.normal,
                fontFamily: 'Sans Serif',
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 10)),
            const Text(
              'Gain benefits as we document your journey',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Text(
              'to healing our planet through recycling!',
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
                      MaterialPageRoute(
                          builder: (context) => const IntroThree()),
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
