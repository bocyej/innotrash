import 'package:flutter/material.dart';

import '../pages/profile.dart';

class HomeAppbar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 30)),
              InkWell(
                child: const Icon(Icons.search),
                onTap: () {},
              )
            ],
          );
        },
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      elevation: 0.0,
      actions: <Widget>[
        InkWell(
          child: const Icon(Icons.notifications_none_outlined),
          onTap: () {},
        ),
        const Padding(padding: EdgeInsets.only(right: 25)),
        Container(
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
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
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
        const Padding(padding: EdgeInsets.only(right: 30)),
      ],
    );
  }
}
