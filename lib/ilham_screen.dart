import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class IlhamScreen extends StatefulWidget {
  const IlhamScreen({super.key});

  @override
  State<IlhamScreen> createState() => _IlhamState();
}

class _IlhamState extends State<IlhamScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Center(
      child: Text(
        "Home",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
    Center(
      child: Text(
        "Settings",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ilham Profile'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(color: Colors.green, child: _pages[_selectedIndex]),
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [Icons.home, Icons.person, Icons.settings, Icons.logout],
        activeColor: Colors.deepPurple,
        inactiveColor: Colors.white,
        backgroundColor: Colors.black,
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.end,
        notchSmoothness: NotchSmoothness.smoothEdge,
        onTap: _onItemTapped,
      ),
    );
  }
}
