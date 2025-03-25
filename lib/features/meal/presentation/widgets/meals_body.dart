import 'package:eat_wise/features/meal/domain/entities/meal.dart';
import 'package:eat_wise/features/meal/presentation/widgets/date_calender.dart';
import 'package:eat_wise/features/meal/presentation/widgets/meal_list.dart';
import 'package:flutter/material.dart';

class MealsBody extends StatelessWidget {
  const MealsBody({
    super.key,
    required ScrollController scrollController,
    required this.selectedDate,
    required this.totalCalories,
    required this.meals,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;
  final DateTime selectedDate;
  final int totalCalories;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Date Picker with Arrows
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: DateCalender(
            scrollController: _scrollController,
            selectedDate: selectedDate,
          ),
        ),
        // Total Calories
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Text('Total Calories: $totalCalories'),
        ),
        // Meal List
        Expanded(
          child: MealList(
            meals: meals
                .where((meal) =>
                    meal.time.day == selectedDate.day &&
                    meal.time.month == selectedDate.month &&
                    meal.time.year == selectedDate.year)
                .toList(),
          ),
        ),
      ],
    );
  }
}