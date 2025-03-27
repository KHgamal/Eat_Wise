import 'package:flutter/material.dart';
import '../../domain/entities/meal.dart';
import '../widgets/meal_details_appbar.dart';
import '../widgets/meal_details_section.dart';

class MealDetailScreen extends StatelessWidget {
  final Meal meal;

  const MealDetailScreen({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MealDetailsAppBar(meal: meal),
          MealDetailsSection(meal: meal),
        ],
      ),
    );
  }
}