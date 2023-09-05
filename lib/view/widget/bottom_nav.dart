import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {

  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      fixedColor: Colors.blue,
      selectedFontSize: 12,
      unselectedFontSize: 30,
      showSelectedLabels: false,
      showUnselectedLabels: false, 
      
      unselectedItemColor: Colors.grey,
      unselectedLabelStyle: const TextStyle(fontSize: 12),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.menu),
          label: '', 
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: '',
        ),
      ],
    );
  }
}
