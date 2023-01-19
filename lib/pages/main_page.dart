import 'package:flutter/material.dart';
import 'package:seirs_app/pages/history_page.dart';
import 'package:seirs_app/pages/home_page.dart';
import 'package:seirs_app/pages/plant_sensor_page.dart';
import 'package:seirs_app/pages/power_page.dart';
import 'package:seirs_app/pages/setting_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  void _navBottom(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pageChildren = [
    const HomePage(),
    const PowerPage(),
    const PlantSensors(),
    const HistoryPage(),
    const SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _pageChildren[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: _navBottom,
        selectedItemColor: Color.fromARGB(255, 46, 110, 49),
        unselectedItemColor: Colors.grey[600],
        elevation: 0,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.flash_on),
            label: 'Power',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.sensor_occupied),
            label: 'Plant',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.sensor_door),
            label: 'History',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
