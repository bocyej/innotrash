import 'package:flutter/material.dart';

import '../pages/map.dart';

class HomeMap extends StatelessWidget {
  const HomeMap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MapPage()),
            );
          },
          child: Ink.image(
            image: const AssetImage('assets/photos/map_home.png'),
            height: 180,
            width: 275,
          ),
        ),
      ),
    );
  }
}
