import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/meal.dart';
import '../../domain/usecases/add_meal.dart';
import '../../domain/usecases/delete_meal.dart';
import '../../domain/usecases/get_meals.dart';
import '../../domain/usecases/sort_meals.dart';
import 'meal_event.dart';
import 'meal_state.dart';

class MealBloc extends Bloc<MealEvent, MealState> {
  final AddMeal addMeal;
  final DeleteMeal deleteMeal;
  final GetMeals getMeals;
  final SortMeals sortMeals;

  MealBloc({
    required this.addMeal,
    required this.deleteMeal,
    required this.getMeals,
    required this.sortMeals,
  }) : super(MealState.loaded([], 0, DateTime.now())) { // Initialize with empty meals, 0 calories, and current date
    on<MealEvent>((event, emit) async {
      await event.when(
        addMeal: (meal) async {
          emit(const MealState.loading());
          await addMeal(meal);
          final meals = getMeals();
          // Safely access the selectedDate using 'when'
          final selectedDate = state.maybeWhen(
            loaded: (meals, totalCalories, selectedDate) => selectedDate,
            orElse: () => DateTime.now(), // Fallback to current date if not in 'loaded' state
          );
          final totalCalories = _calculateTotalCalories(meals, selectedDate);
          emit(MealState.loaded(meals, totalCalories, selectedDate));
        },
        deleteMeal: (id) async {
          emit(const MealState.loading());
          await deleteMeal(id);
          final meals = getMeals();
          final selectedDate = state.maybeWhen(
            loaded: (meals, totalCalories, selectedDate) => selectedDate,
            orElse: () => DateTime.now(),
          );
          final totalCalories = _calculateTotalCalories(meals, selectedDate);
          emit(MealState.loaded(meals, totalCalories, selectedDate));
        },
        loadMeals: () async {
          emit(const MealState.loading());
          final meals = getMeals();
          final selectedDate = state.maybeWhen(
            loaded: (meals, totalCalories, selectedDate) => selectedDate,
            orElse: () => DateTime.now(),
          );
          final totalCalories = _calculateTotalCalories(meals, selectedDate);
          emit(MealState.loaded(meals, totalCalories, selectedDate));
        },
        sortMeals: (sortBy) async {
          emit(const MealState.loading());
          final meals = getMeals();
          final sortedMeals = sortMeals(meals, sortBy);
          final selectedDate = state.maybeWhen(
            loaded: (meals, totalCalories, selectedDate) => selectedDate,
            orElse: () => DateTime.now(),
          );
          final totalCalories = _calculateTotalCalories(sortedMeals, selectedDate);
          emit(MealState.loaded(sortedMeals, totalCalories, selectedDate));
        },
        selectDate: (date) async {
          emit(const MealState.loading());
          final meals = getMeals();
          final totalCalories = _calculateTotalCalories(meals, date);
          emit(MealState.loaded(meals, totalCalories, date));
        },
      );
    });
  }

  int _calculateTotalCalories(List<MealTrack> meals, DateTime selectedDate) {
    return meals
        .where((meal) =>
            meal.time.day == selectedDate.day &&
            meal.time.month == selectedDate.month &&
            meal.time.year == selectedDate.year)
        .fold(0, (sum, meal) => sum + meal.calories);
  }
}
