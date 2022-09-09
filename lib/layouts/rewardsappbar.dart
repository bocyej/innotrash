import 'package:flutter/material.dart';

import '../pages/homepage.dart';

class RewardsAppbar extends StatelessWidget with PreferredSizeWidget {
  const RewardsAppbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Homepage()),
              );
            },
            padding: const EdgeInsets.only(left: 10),
          );
        },
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      elevation: 0.0,
    );
  }
}
