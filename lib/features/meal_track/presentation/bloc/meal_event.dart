import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/meal.dart';
part 'meal_event.freezed.dart';

@freezed
class MealEvent with _$MealEvent {
  const factory MealEvent.addMeal(Meal meal) = _AddMeal;
  const factory MealEvent.deleteMeal(String id) = _DeleteMeal;
  const factory MealEvent.loadMeals() = _LoadMeals;
  const factory MealEvent.sortMeals(String sortBy) = _SortMeals;
  const factory MealEvent.selectDate(DateTime date) = _SelectDate;
}