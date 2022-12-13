import 'package:flutter/material.dart';

import '../pages/profile.dart';

class MapAppbar extends StatelessWidget with PreferredSizeWidget {
  const MapAppbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(80);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFF2D2F4E),
      foregroundColor: Colors.white,
      elevation: 0.0,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 60),
          child: Container(
            width: 215,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.white,
            ),
            child: Row(
              children: const [
                Padding(padding: EdgeInsets.only(left: 10)),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                  size: 17,
                ),
                Text(
                  ' Find an iNNOTrash near you',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 25),
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
