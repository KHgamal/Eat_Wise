import 'package:eat_wise/features/meal/presentation/bloc/meal_bloc.dart';
import 'package:eat_wise/features/meal/presentation/bloc/meal_state.dart';
import 'package:eat_wise/features/meal/presentation/widgets/meals_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MealBlocBody extends StatefulWidget {
  const MealBlocBody({
    super.key,
  });

  @override
  State<MealBlocBody> createState() => _MealBlocBodyState();
}

class _MealBlocBodyState extends State<MealBlocBody> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MealBloc, MealState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Center(child: Text('No data yet')),
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (meals, totalCalories, selectedDate) {
            // Calculate the index of the current day in the selected month
            final currentDay = DateTime.now();
            final isCurrentMonth = currentDay.month == selectedDate.month &&
                currentDay.year == selectedDate.year;
            final dayToFocus = isCurrentMonth
                ? currentDay.day
                : 1; // Focus on current day if in current month, else 1st
            final dayToFocusIndex =
                dayToFocus - 3; // ListView index starts 2days before current

            // Scroll to the focused day after the frame is built
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (_scrollController.hasClients) {
                // Each item has a width of 50 + 8 (margin: 4 on each side)
                const itemWidth = 50.0 + 8.0;
                final offset = dayToFocusIndex * itemWidth;
                _scrollController.animateTo(
                  offset,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              }
            });

            return Expanded(
              child: MealsBody(
                scrollController: _scrollController,
                selectedDate: selectedDate,
                meals: meals,
                totalCalories: totalCalories,
              ),
            );
          },
          error: (message) => Center(child: Text(message)),
        );
      },
    );
  }
}