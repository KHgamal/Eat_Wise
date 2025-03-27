import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/repositories/meal_repository.dart';
import 'meal_event.dart';
import 'meal_state.dart';

class MealBloc extends Bloc<MealEvent, MealState> {
  final MealRepository repository;

  MealBloc(this.repository) : super(const MealState.initial()) {
    on<MealEvent>((event, emit) async {
      await event.when(
        search: (query) async {
          emit(const MealState.loading());
          try {
            final meals = await repository.searchMeals(query);
            emit(MealState.loaded(meals));
          } catch (e) {
            emit(MealState.error(e.toString()));
          }
        },
        filterByCategory: (category) async {
          emit(const MealState.loading());
          try {
            final meals = await repository.filterMealsByCategory(category);
            emit(MealState.loaded(meals));
          } catch (e) {
            emit(MealState.error(e.toString()));
          }
        },
      );
    });
  }
}