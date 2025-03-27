import '../entities/meal.dart';

abstract class MealRepository {
  Future<List<Meal>> searchMeals(String query);
  Future<List<Meal>> filterMealsByCategory(String category);
  Future<Meal> getMealDetails(String mealId);
}