import 'package:class_cred/profile.dart';
import 'package:class_cred/quests.dart';
import 'package:class_cred/store.dart';
import 'package:flutter/material.dart';

import 'constants.dart';
import 'home_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => _pages[_selectedIndex]));
    });
  }

  static const List<Widget> _pages = <Widget>[
    Profile(),
    HomeScreen(),
    Quests(),
    Store(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'PROFILE',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'HOME',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'QUESTS',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.store),
          label: 'STORE',
        ),
      ],
      elevation: 5,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      selectedItemColor: kGreenlandGreen,
      unselectedItemColor: Colors.grey,
      iconSize: 30,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      type: BottomNavigationBarType.shifting,
    );
  }
}
