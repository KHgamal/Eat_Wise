import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/meal_bloc.dart';
import '../bloc/meal_state.dart';
import 'meals_grid.dart';


class MealRecipeBloc extends StatelessWidget {
  const MealRecipeBloc({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealBloc, MealState>(
      builder: (context, state) {
        return state.whenOrNull(
              initial: () =>
                  const Center(child: Text('Search for meals')),
              loading: () =>
                  const Center(child: CircularProgressIndicator()),
              loaded: (meals) => MealsGrid(meals: meals,),
              error: (message) => Center(child: Text(message)),
            ) ??
            const SizedBox.shrink(); // Ignore detailLoaded
      },
    );
  }
}