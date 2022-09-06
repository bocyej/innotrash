import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(75);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            tooltip: 'Search',
            padding: const EdgeInsets.all(15),
          );
        },
      ),
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      elevation: 0.0,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.notifications_none_outlined),
          tooltip: 'Notifications',
          onPressed: () {},
          padding: const EdgeInsets.only(right: 20),
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Material(
            shape: const CircleBorder(),
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {},
              child: Ink.image(
                image: const AssetImage('assets/photos/profile_pic.png'),
                height: 30,
                width: 30,
              ),
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.only(right: 15)),
      ],
    );
  }
}
