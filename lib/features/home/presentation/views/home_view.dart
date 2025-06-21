import 'package:eat_wise/features/home/presentation/widgets/home_header.dart';
import 'package:eat_wise/features/home/presentation/widgets/meal_type_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import '../../../meal_track/domain/entities/meal.dart';
import '../../../meal_track/presentation/bloc/meal_bloc.dart';
import '../../../meal_track/presentation/bloc/meal_event.dart';
import '../../../meal_track/presentation/bloc/meal_state.dart';
import '../widgets/calorie_indicator.dart';
import '../widgets/health_counter_section.dart';
import '../widgets/meal_calendar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeHeader(),
              const SizedBox(
                height: 20,
              ),
              const HealthCounterSection(),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<MealTrackBloc, MealTrackState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      MealCalendar(
                        focusedDay: state.maybeWhen(
                          loaded: (breakfastMeals, lunchMeals, dinnerMeals,
                                  totalCalories, selectedDate) =>
                              selectedDate,
                          orElse: () => DateTime.now(),
                        ),
                        selectedDayPredicate: (day) => state.maybeWhen(
                          loaded: (breakfastMeals, lunchMeals, dinnerMeals,
                                  totalCalories, selectedDate) =>
                              isSameDay(selectedDate, day),
                          orElse: () => false,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      state.when(
                        initial: () => const SizedBox.shrink(),
                        error: (message) =>
                            Center(child: Text("Error: $message")),
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        loaded: (breakfastMeals, lunchMeals, dinnerMeals,
                            totalCalories, selectedDate) {
                          return Column(
                            children: [
                              CalorieIndicator(
                                consumed: totalCalories,
                                goal: 1700,
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              MealTypeBox(
                                mealType: 'Breakfast',
                                onPressed: () =>
                                    _showAddMealDialog(context, 'breakfast'),
                                meals: breakfastMeals,
                                onDeleteMeal: (mealId) => context
                                    .read<MealTrackBloc>()
                                    .add(MealTrackEvent.deleteMeal(mealId)),
                              ),
                               const SizedBox(
                                height: 16,
                              ),
                              MealTypeBox(
                                mealType: 'Lunch',
                                onPressed: () =>
                                    _showAddMealDialog(context, 'lunch'),
                                meals: lunchMeals,
                                onDeleteMeal: (mealId) => context
                                    .read<MealTrackBloc>()
                                    .add(MealTrackEvent.deleteMeal(mealId)),
                              ),
                               const SizedBox(
                                height: 16,
                              ),
                              MealTypeBox(
                                mealType: 'Dinner',
                                onPressed: () =>
                                    _showAddMealDialog(context, 'dinner'),
                                meals: dinnerMeals,
                                onDeleteMeal: (mealId) => context
                                    .read<MealTrackBloc>()
                                    .add(MealTrackEvent.deleteMeal(mealId)),
                              ),
                            ],
                          );
                        },
                      )
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showAddMealDialog(BuildContext context, String mealType) {
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
