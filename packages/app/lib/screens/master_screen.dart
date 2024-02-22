import 'package:educonnect_app/screens/home_screen.dart';
import 'package:educonnect_app/screens/statistic_screen.dart';
import 'package:flutter/material.dart';

class MasterScreen extends StatefulWidget {
  const MasterScreen({super.key});

  @override
  State<MasterScreen> createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const Text('Schools'),
    const StatisticScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 11),
          child: Image.asset('lib/assets/images/educonnect-logo.png'),
        ),
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: const Text(
          'EduConnect',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: ImageIcon(
              AssetImage('lib/assets/images/profile-icon.png'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: const Color(0xFF484C52),
        selectedItemColor: const Color(0xFF539DF3),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/home-icon.png'),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('lib/assets/images/school-icon.png'),
            ),
            label: 'Schools',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sd),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sd),
            label: 'Jobs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sd),
            label: 'Profile',
          ),
        ],
      ),
      body: _screens[_currentIndex],
    );
  }
}
