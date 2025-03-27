import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/meal.dart';
part 'meal_state.freezed.dart';

@freezed
class MealTrackState with _$MealTrackState {
  const factory MealTrackState.initial() = _Initial;
  const factory MealTrackState.loading() = _Loading;
  const factory MealTrackState.loaded(List<MealTrack> meals, int totalCalories ,DateTime selectedDate,) = _Loaded;
  const factory MealTrackState.error(String message) = _Error;
}