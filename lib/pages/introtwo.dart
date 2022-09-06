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
            image: AssetImage("assets/photos/bg_1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.only(top: 115)),
            const Image(
              image: AssetImage("assets/photos/intro_2.png"),
              height: 300,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            const Text(
              'GAIN BENEFITS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.normal,
                fontFamily: 'Sans Serif',
              ),
            ),
            const Padding(padding: EdgeInsets.only(bottom: 5)),
            const Text(
              'Gain benefits as we document your journey',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.normal,
              ),
            ),
            const Text(
              'to healing our planet through recycling!',
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
                      MaterialPageRoute(
                          builder: (context) => const IntroThree()),
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
                      MaterialPageRoute(
                          builder: (context) => const IntroThree()),
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
