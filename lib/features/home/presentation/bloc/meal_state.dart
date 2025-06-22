import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/meal.dart';
part 'meal_state.freezed.dart';

@freezed
@freezed
class MealTrackState with _$MealTrackState {
  const factory MealTrackState.initial() = _Initial;
  const factory MealTrackState.loading() = _Loading;
  const factory MealTrackState.loaded({
    required List<MealTrack> breakfastMeals,
    required List<MealTrack> lunchMeals,
    required List<MealTrack> dinnerMeals,
    required int totalCalories,
    required DateTime selectedDate,
  }) = _Loaded;
  const factory MealTrackState.error(String message) = _Error;
}