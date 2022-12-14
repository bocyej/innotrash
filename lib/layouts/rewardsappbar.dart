import 'package:flutter/material.dart';

import '../pages/homepage.dart';

class RewardsAppbar extends StatelessWidget with PreferredSizeWidget {
  const RewardsAppbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 25, left: 25),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Homepage()),
            );
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      elevation: 0.0,
    );
  }
}
