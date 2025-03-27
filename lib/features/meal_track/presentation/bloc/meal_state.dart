import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/meal.dart';
part 'meal_state.freezed.dart';

@freezed
class MealState with _$MealState {
  const factory MealState.initial() = _Initial;
  const factory MealState.loading() = _Loading;
  const factory MealState.loaded(List<MealTrack> meals, int totalCalories ,DateTime selectedDate,) = _Loaded;
  const factory MealState.error(String message) = _Error;
}