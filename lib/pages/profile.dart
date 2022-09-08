import 'package:flutter/material.dart';

import '../layouts/profilecard.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/photos/bg_2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: const ProfileCard(),
      ), //
    );
  }
}
