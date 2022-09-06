import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../pages/structure.dart';

class IntroThree extends StatelessWidget {
  const IntroThree({Key? key}) : super(key: key);

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
          children: [
            const Padding(padding: EdgeInsets.only(top: 165)),
            const Image(
              image: AssetImage("assets/photos/intro_3.png"),
              height: 200,
            ),
            const Padding(padding: EdgeInsets.only(bottom: 25)),
            const Text(
              'PARTICIPATE',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Structure()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      primary: Colors.white,
                      elevation: 0.0,
                    ),
                    child: const Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
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
