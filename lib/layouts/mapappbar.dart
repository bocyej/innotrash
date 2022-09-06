import 'package:flutter/material.dart';

class MapAppbar extends StatelessWidget with PreferredSizeWidget {
  const MapAppbar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        height: 35,
        width: 185,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          color: Colors.white,
        ),
        child: Row(
          children: const [
            Padding(padding: EdgeInsets.only(left: 10)),
            Icon(
              Icons.search,
              color: Colors.black,
              size: 15,
            ),
            Text(
              ' Find an iNNOTrash near you',
              style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xFF2D2F4E),
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
