import 'package:flutter/material.dart';

import '../custom_color/innotrash_primary.dart';
import '../layouts/homeappbar.dart';
import '../pages/homepage.dart';
import '../pages/qr.dart';
import '../pages/map.dart';
import '../pages/rewards.dart';
import '../pages/profile.dart';

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
  int _selectedIndex = 0;

  void _onNavTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final pages = [
    const Homepage(),
    const QRPage(),
    const MapPage(),
    const RewardsPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true, // transparent bottom navbar
      body: pages[_selectedIndex],
      bottomNavigationBar: SizedBox(
        // height: 55,
        child: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              activeIcon: Icon(Icons.qr_code_outlined),
              label: 'QR Scan',
            ),
            BottomNavigationBarItem(
              icon: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF2F7CFF),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Icon(Icons.map_outlined),
                ),
              ),
              activeIcon: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFF2F7CFF),
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Icon(Icons.map),
                ),
              ),
              label: 'Map',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.radio_button_off),
              activeIcon: Icon(Icons.radio_button_on),
              // or Icons.circle_outlined & Icons.circle
              // or Icons.lens_outlined & Icons.lens
              // or Icons.fiber_manual_record_outlined & Icons.fiber_manual_record
              label: 'Rewards',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_sharp),
              activeIcon: Icon(Icons.person_sharp),
              label: 'Profile',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF2D2F4E),
          elevation: 0.0,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          onTap: _onNavTapped,
          showUnselectedLabels: false,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade400,
        ),
      ),
    );
  }
}
