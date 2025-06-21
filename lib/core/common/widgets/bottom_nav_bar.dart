import 'package:eat_wise/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

import '../../../features/meal_recipe/presentation/views/meal_category_view.dart';

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
      const  MealCategoryScreen(),
    ];

    return Scaffold(
      body: screens[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.set_meal),
            label: 'Meal Categories',
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

