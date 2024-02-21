import 'package:flutter/material.dart';

class StatisticScreen extends StatelessWidget {
  const StatisticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: ImageIcon(
              AssetImage('lib/assets/images/profile-icon.png'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Color(0xFF484C52),
        selectedItemColor: Color(0xFF539DF3),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: 2,
        items: [
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
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Live Statistic',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
