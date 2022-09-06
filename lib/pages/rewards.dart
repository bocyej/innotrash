import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../layouts/rewardsappbar.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // transparent appbar
      appBar: const RewardsAppbar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/photos/bg_1.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: const [
            Padding(padding: EdgeInsets.only(top: 100)),
            Center(
              child: Text(
                'Your Balance',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5)),
            Center(
              child: Text(
                '69 POINTS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'Sans Serif',
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 10)),
          ],
        ),
      ),
    );
  }
}
