import 'package:flutter/material.dart';

import '../pages/profile.dart';

class HomeAppbar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 25, left: 25),
        child: InkWell(
          child: const Icon(Icons.search),
          onTap: () {},
        ),
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      elevation: 0.0,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: InkWell(
            child: const Icon(Icons.notifications_none_outlined),
            onTap: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 30),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Material(
              shape: const CircleBorder(),
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage()),
                  );
                },
                child: Ink.image(
                  image: const AssetImage('assets/photos/profile_pic.png'),
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
