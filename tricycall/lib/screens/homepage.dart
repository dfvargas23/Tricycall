import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Notification Page'),
    Text('Availability Page'),
    Text('About Page'),
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  BottomNavigationBarItem _buildNavItem(
      IconData icon, String label, bool isSelected) {
    return BottomNavigationBarItem(
      icon: Stack(
        children: [
          Icon(icon),
          if (isSelected)
            Positioned(
              top: -5,
              left: 0,
              right: 0,
              child: Container(
                height: 4,
                color: Colors.blue, // Color of the indicator line
              ),
            ),
        ],
      ),
      label: label,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          _buildNavItem(Icons.home, 'Home', _selectedIndex == 0),
          _buildNavItem(
              Icons.notifications, 'Notification', _selectedIndex == 1),
          _buildNavItem(Icons.av_timer, 'Availability', _selectedIndex == 2),
          _buildNavItem(Icons.info, 'About', _selectedIndex == 3),
          _buildNavItem(Icons.person, 'Profile', _selectedIndex == 4),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.grey,
        unselectedItemColor: Color(0xfff1F4345),
        backgroundColor: const Color.fromARGB(255, 224, 222, 222),
        onTap: _onItemTapped,
      ),
    );
  }
}
