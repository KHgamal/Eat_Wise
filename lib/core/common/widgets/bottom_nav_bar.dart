import 'package:eat_wise/features/meal_track/presentation/views/tracked_meal_view.dart';
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
      const TrackedMealPage(),
      MealCategoryScreen(),
    ];

    return Scaffold(
      body: screens[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant_menu),
            label: 'Tracked Meals',
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

