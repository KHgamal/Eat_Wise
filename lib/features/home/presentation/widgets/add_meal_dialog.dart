import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../meal_track/domain/entities/meal.dart';
import '../../../meal_track/presentation/bloc/meal_bloc.dart';
import '../../../meal_track/presentation/bloc/meal_event.dart';

void showAddMealDialog(BuildContext context, String mealType) {
  final nameController = TextEditingController();
  final caloriesController = TextEditingController();
  final selectedDate = context.read<MealTrackBloc>().state.maybeWhen(
        loaded: (breakfastMeals, lunchMeals, dinnerMeals, totalCalories,
                selectedDate) =>
            selectedDate,
        orElse: () => DateTime.now(),
      );

  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: Text('Add $mealType Meal'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Meal Name'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: caloriesController,
              decoration: const InputDecoration(labelText: 'Calories'),
              keyboardType: TextInputType.number,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              final name = nameController.text;
              final calories = int.tryParse(caloriesController.text) ?? 0;
              if (name.isNotEmpty && calories > 0) {
                final meal = MealTrack(
                  id: DateTime.now().millisecondsSinceEpoch.toString(),
                  name: name,
                  calories: calories,
                  time: selectedDate,
                  mealType: mealType.toLowerCase(),
                );
                context.read<MealTrackBloc>().add(MealTrackEvent.addMeal(meal));
                Navigator.pop(context);
              }
            },
            child: const Text('Add'),
          ),
        ],
      );
    },
  );
}
