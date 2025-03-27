import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/meal.dart';
import '../../domain/repositories/meal_repository.dart';
import 'meal_event.dart';
import 'meal_state.dart';

class MealBloc extends Bloc<MealEvent, MealState> {
  final MealRepository repository;
  List<Meal> _lastLoadedMeals = []; // Still useful for reset

  MealBloc(this.repository) : super(const MealState.initial()) {
    on<MealEvent>((event, emit) async {
      await event.when(
        search: (query) async {
          emit(const MealState.loading());
          try {
            final meals = await repository.searchMeals(query);
            _lastLoadedMeals = meals;
            emit(MealState.loaded(meals));
          } catch (e) {
            emit(MealState.error(e.toString()));
          }
        },
        filterByCategory: (category) async {
          emit(const MealState.loading());
          try {
            final meals = await repository.filterMealsByCategory(category);
            _lastLoadedMeals = meals;
            emit(MealState.loaded(meals));
          } catch (e) {
            emit(MealState.error(e.toString()));
          }
        },
        fetchMealDetails: (mealId) async {
          // No detailLoading state, go straight to fetching
          try {
            final meal = await repository.getMealDetails(mealId);
            emit(MealState.detailLoaded(meal));
          } catch (e) {
            emit(MealState.error(e.toString()));
          }
        },
        resetToLastLoaded: () async {
          emit(MealState.loaded(_lastLoadedMeals));
        },
      );
    });
  }
}