import 'package:eat_wise/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../../features/steps/presentation/views/step_indicator.dart';
import '../../../features/water_track/presentation/views/water_track_view.dart';

class CustomBottomNavBar extends StatefulWidget {

  const CustomBottomNavBar({
    super.key,
  });

  @override
  CustomBottomNavBarState createState() => CustomBottomNavBarState();
}

class CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    final List<Widget> screens = [
      const HomeView(),
      const StepTrackerPage(),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.directions_walk),
            label: 'steps',
          ),
        ],
        currentIndex: _selectedIndex,
       // selectedItemColor: Colors.blue,
       // unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

