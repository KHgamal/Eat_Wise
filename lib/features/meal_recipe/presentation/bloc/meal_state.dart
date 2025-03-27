import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/meal.dart';

part 'meal_state.freezed.dart';

@freezed
class MealState with _$MealState {
  const factory MealState.initial() = _Initial;
  const factory MealState.loading() = _Loading;
  const factory MealState.loaded(List<Meal> meals) = _Loaded;
  const factory MealState.error(String message) = _Error;
  const factory MealState.detailLoading() = _DetailLoading; 
  const factory MealState.detailLoaded(Meal meal) = _DetailLoaded; 
}