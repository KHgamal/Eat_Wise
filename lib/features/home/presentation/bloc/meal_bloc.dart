import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/meal.dart';
import '../../domain/usecases/add_meal.dart';
import '../../domain/usecases/delete_meal.dart';
import '../../domain/usecases/get_meals.dart';
import 'meal_event.dart';
import 'meal_state.dart';

class MealTrackBloc extends Bloc<MealTrackEvent, MealTrackState> {
  final AddMeal addMeal;
  final DeleteMeal deleteMeal;
  final GetMeals getMeals;

  MealTrackBloc({
    required this.addMeal,
    required this.deleteMeal,
    required this.getMeals,
  }) : super(const MealTrackState.initial()) {
    on<MealTrackEvent>((event, emit) async {
      await event.when(
        addMeal: (meal) async {
          emit(const MealTrackState.loading());
          await addMeal(meal);
          final selectedDate = state.maybeWhen(
            loaded: (breakfastMeals, lunchMeals, dinnerMeals, totalCalories, selectedDate) => selectedDate,
            orElse: () => DateTime.now(),
          );
          final breakfastMeals = getMeals('breakfast', selectedDate);
          final lunchMeals = getMeals('lunch', selectedDate);
          final dinnerMeals = getMeals('dinner', selectedDate);
          final totalCalories = _calculateTotalCalories(
            [...breakfastMeals, ...lunchMeals, ...dinnerMeals],
            selectedDate,
          );
          emit(MealTrackState.loaded(
            breakfastMeals: breakfastMeals,
            lunchMeals: lunchMeals,
            dinnerMeals: dinnerMeals,
            totalCalories: totalCalories,
            selectedDate: selectedDate,
          ));
        },
        deleteMeal: (id) async {
          emit(const MealTrackState.loading());
          await deleteMeal(id);
          final selectedDate = state.maybeWhen(
            loaded: (breakfastMeals, lunchMeals, dinnerMeals, totalCalories, selectedDate) => selectedDate,
            orElse: () => DateTime.now(),
          );
          final breakfastMeals = getMeals('breakfast', selectedDate);
          final lunchMeals = getMeals('lunch', selectedDate);
          final dinnerMeals = getMeals('dinner', selectedDate);
          final totalCalories = _calculateTotalCalories(
            [...breakfastMeals, ...lunchMeals, ...dinnerMeals],
            selectedDate,
          );
          emit(MealTrackState.loaded(
            breakfastMeals: breakfastMeals,
            lunchMeals: lunchMeals,
            dinnerMeals: dinnerMeals,
            totalCalories: totalCalories,
            selectedDate: selectedDate,
          ));
        },
        loadMeals: () async {
          emit(const MealTrackState.loading());
          final selectedDate = state.maybeWhen(
            loaded: (breakfastMeals, lunchMeals, dinnerMeals, totalCalories, selectedDate) => selectedDate,
            orElse: () => DateTime.now(),
          );
          final breakfastMeals = getMeals('breakfast', selectedDate);
          final lunchMeals = getMeals('lunch', selectedDate);
          final dinnerMeals = getMeals('dinner', selectedDate);
          final totalCalories = _calculateTotalCalories(
            [...breakfastMeals, ...lunchMeals, ...dinnerMeals],
            selectedDate,
          );
          emit(MealTrackState.loaded(
            breakfastMeals: breakfastMeals,
            lunchMeals: lunchMeals,
            dinnerMeals: dinnerMeals,
            totalCalories: totalCalories,
            selectedDate: selectedDate,
          ));
        },
        selectDate: (date) async {
          emit(const MealTrackState.loading());
          final breakfastMeals = getMeals('breakfast', date);
          final lunchMeals = getMeals('lunch', date);
          final dinnerMeals = getMeals('dinner', date);
          final totalCalories = _calculateTotalCalories(
            [...breakfastMeals, ...lunchMeals, ...dinnerMeals],
            date,
          );
          emit(MealTrackState.loaded(
            breakfastMeals: breakfastMeals,
            lunchMeals: lunchMeals,
            dinnerMeals: dinnerMeals,
            totalCalories: totalCalories,
            selectedDate: date,
          ));
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
