import 'package:finance_reward/screens/tabs/analytics.dart';
import 'package:finance_reward/screens/tabs/cards.dart';
import 'package:finance_reward/screens/tabs/home.dart';
import 'package:finance_reward/screens/tabs/profile.dart';
import 'package:finance_reward/screens/tabs/scan.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const[
    HomeScreen(),
    AnalyticsTab(),
    ScanTab(),
    CardsTab(),
    ProfileTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedIconTheme: const IconThemeData(size: 20),
        unselectedIconTheme: const IconThemeData(size: 20),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/home.png', scale: 20),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/analytics.png', scale: 20),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/scan.png', scale: 20),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/credit-card.png', scale: 20),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/user.png', scale: 20),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}