import '../entities/meal.dart';

abstract class MealRepository {
  Future<void> addMeal(Meal meal);
  Future<void> deleteMeal(String id);
  List<Meal> getMeals();
}
