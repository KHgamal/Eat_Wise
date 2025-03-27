import 'package:eat_wise/core/common/styles/colors_app.dart';
import 'package:eat_wise/features/meal_track/presentation/bloc/meal_bloc.dart';
import 'package:eat_wise/features/meal_track/presentation/bloc/meal_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilterMenuButton extends StatelessWidget {
  const FilterMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      onSelected: (value) {
        context.read<MealBloc>().add(MealEvent.sortMeals(value));
      },
      icon: const Icon(Icons.sort , color: AppColors.darkGreen,), // Change this to any icon you want
      itemBuilder: (context) => [
        const PopupMenuItem(
            value: 'name', child: Text('Sort by Name')),
        const PopupMenuItem(
            value: 'calories', child: Text('Sort by Calories')),
        const PopupMenuItem(
            value: 'time', child: Text('Sort by Time')),
      ],
    );
  }
}