import 'package:eat_wise/features/meal_track/presentation/widgets/add_meal_floating_button.dart';
import 'package:eat_wise/features/meal_track/presentation/widgets/header.dart';
import 'package:eat_wise/features/meal_track/presentation/widgets/meal_bloc.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Header(),
            MealBlocBody(),
          ],
        ),
        floatingActionButton: AddMealFloatingButton(),
      ),
    );
  }
}