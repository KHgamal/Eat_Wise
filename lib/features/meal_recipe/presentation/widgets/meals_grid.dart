import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../domain/entities/meal.dart';
import 'meal_card.dart';

class MealsGrid extends StatelessWidget {
  const MealsGrid({
    super.key, required this.meals,
  });
 final List<Meal> meals;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
      ),
      itemCount: meals.length,
      itemBuilder: (context, index) =>
          MealCard(meal: meals[index]),
    );
  }
}