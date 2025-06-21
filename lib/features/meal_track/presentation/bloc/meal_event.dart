import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/meal.dart';
part 'meal_event.freezed.dart';

@freezed
class MealTrackEvent with _$MealTrackEvent {
  const factory MealTrackEvent.addMeal(MealTrack meal) = _AddMeal;
  const factory MealTrackEvent.deleteMeal(String id) = _DeleteMeal;
  const factory MealTrackEvent.loadMeals() = _LoadMeals;
  const factory MealTrackEvent.selectDate(DateTime date) = _SelectDate;
}