import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:devpn/view/screens/setting_screen/setting_screen.dart';
import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import '../serverlist_screen/serverlist_screen.dart';
import '../speed_screen/speed_screen.dart';

class NavHomeScreen extends StatefulWidget {
  const NavHomeScreen({super.key});

  @override
  State<NavHomeScreen> createState() => _NavHomeScreenState();
}

class _NavHomeScreenState extends State<NavHomeScreen> {
  int _currentIndex = 0;
  final _pages = [
    const HomeScreen(),

    const SpeedScreen(),
    const ServerListScreen(),
    const SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });
        },
        currentIndex: _currentIndex,
        backgroundColor: const Color(0xff110119),
        fixedColor: const Color(0xffd0ccd1),
        unselectedItemColor: const Color(0xff82757C),
        type: BottomNavigationBarType.fixed,
        items:  const [
          BottomNavigationBarItem(
            icon:Icon(BootstrapIcons.shield_lock),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:Icon(BootstrapIcons.speedometer2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:Icon(BootstrapIcons.globe2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon:Icon(BootstrapIcons.gear_wide_connected),
            label: '',
          ),
        ],
      ),
      body: _pages[_currentIndex],
    );
  }
}
