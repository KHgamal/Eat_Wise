import 'package:eat_wise/features/home/presentation/widgets/home_header.dart';
import 'package:eat_wise/features/home/presentation/widgets/meal_type_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';
import '../bloc/meal_bloc.dart';
import '../bloc/meal_event.dart';
import '../bloc/meal_state.dart';
import '../widgets/add_meal_dialog.dart';
import '../widgets/calorie_indicator.dart';
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
              // still constant data
              const HomeHeader(),
              const SizedBox(
                height: 20,
              ),
              BlocBuilder<MealTrackBloc, MealTrackState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      state.maybeWhen(
                        loaded: (breakfastMeals, lunchMeals, dinnerMeals,
                            totalCalories, selectedDate) {
                          return Column(
                            children: [
                              CalorieIndicator(
                                consumed: totalCalories,
                                goal: 1700,
                              ),
                              const SizedBox(height: 16),
                            ],
                          );
                        },
                        orElse: () => const SizedBox.shrink(),
                      ),
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
                      const SizedBox(height: 16),
                      state.when(
                        initial: () => const SizedBox.shrink(),
                        loading: () =>
                            const Center(child: CircularProgressIndicator()),
                        error: (message) =>
                            Center(child: Text("Error: $message")),
                        loaded: (breakfastMeals, lunchMeals, dinnerMeals,
                            totalCalories, selectedDate) {
                          return Column(
                            children: [
                              MealTypeBox(
                                mealType: 'Breakfast',
                                onPressed: () =>
                                    showAddMealDialog(context, 'breakfast'),
                                meals: breakfastMeals,
                                onDeleteMeal: (mealId) => context
                                    .read<MealTrackBloc>()
                                    .add(MealTrackEvent.deleteMeal(mealId)),
                              ),
                              const SizedBox(height: 16),
                              MealTypeBox(
                                mealType: 'Lunch',
                                onPressed: () =>
                                    showAddMealDialog(context, 'lunch'),
                                meals: lunchMeals,
                                onDeleteMeal: (mealId) => context
                                    .read<MealTrackBloc>()
                                    .add(MealTrackEvent.deleteMeal(mealId)),
                              ),
                              const SizedBox(height: 16),
                              MealTypeBox(
                                mealType: 'Dinner',
                                onPressed: () =>
                                    showAddMealDialog(context, 'dinner'),
                                meals: dinnerMeals,
                                onDeleteMeal: (mealId) => context
                                    .read<MealTrackBloc>()
                                    .add(MealTrackEvent.deleteMeal(mealId)),
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
