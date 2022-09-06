import 'package:flutter/material.dart';

import '../layouts/mapappbar.dart';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // transparent appbar
      appBar: const MapAppbar(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/photos/map.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: null,
      ),
    );
  }
}
