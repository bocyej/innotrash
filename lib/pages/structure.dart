import 'package:flutter/material.dart';

import '../custom_color/innotrash_primary.dart';
import '../layouts/homeappbar.dart';
import '../pages/homepage.dart';
import '../pages/qr.dart';
import '../pages/map.dart';
import '../pages/rewards.dart';
import '../pages/profile.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Structure extends StatelessWidget {
  const Structure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StructurePage(),
    );
  }
}

class StructurePage extends StatefulWidget {
  const StructurePage({Key? key}) : super(key: key);

  @override
  State<StructurePage> createState() => _StructurePageState();
}

class _StructurePageState extends State<StructurePage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<Widget> _buildScreens() {
    return [
      const Homepage(),
      const QRPage(),
      const MapPage(),
      const RewardsPage(),
      const ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        inactiveIcon: const Icon(Icons.home_outlined),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey.shade400,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.qr_code),
        inactiveIcon: const Icon(Icons.qr_code_outlined),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey.shade400,
      ),
      PersistentBottomNavBarItem(
        icon: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF2F7CFF),
            shape: BoxShape.circle,
          ),
          child: const Padding(
            padding: EdgeInsets.all(7.0),
            child: Icon(
              Icons.map,
            ),
          ),
        ),
        inactiveIcon: Container(
          decoration: const BoxDecoration(
            color: Color(0xFF2F7CFF),
            shape: BoxShape.circle,
          ),
          child: const Padding(
            padding: EdgeInsets.all(7.0),
            child: Icon(
              Icons.map_outlined,
            ),
          ),
        ),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey.shade400,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.radio_button_on),
        inactiveIcon: const Icon(Icons.radio_button_off),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey.shade400,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person_sharp),
        inactiveIcon: const Icon(Icons.person_outline_sharp),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: Colors.grey.shade400,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      backgroundColor: Color(0xFF2D2F4E),
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarItems(),
      navBarStyle: NavBarStyle.style12,
    );
  }
}
