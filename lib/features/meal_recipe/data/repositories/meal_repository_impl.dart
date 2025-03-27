import 'package:eat_wise/features/meal_recipe/data/datasources/api_service.dart';

import '../../domain/entities/meal.dart';
import '../../domain/repositories/meal_repository.dart';
import '../models/meal_model.dart';

class MealRepositoryImpl implements MealRepository {
  final ApiService apiService;

  MealRepositoryImpl(this.apiService);

  @override
  Future<List<Meal>> searchMeals(String query) async {
    final response = await apiService.searchMeals(query);
    return response['meals']?.map((m) => m.toEntity()).toList() ?? [];
  }

  @override
  Future<List<Meal>> filterMealsByCategory(String category) async {
    final response = await apiService.filterByCategory(category);
    return response['meals']?.map((m) => m.toEntity()).toList() ?? [];
  }

  @override
  Future<Meal> getMealDetails(String mealId) async {
    final response = await apiService.getMealDetails(mealId);
    final meals = response['meals']?.map((m) => m.toEntity()).toList() ?? [];
    if (meals.isNotEmpty) return meals.first;
    throw Exception('Meal not found');
  }
}

extension MealModelExtension on MealModel {
  Meal toEntity() => Meal(
        id: idMeal,
        name: strMeal,
        thumbnail: strMealThumb,
        instructions: strInstructions,
        category: strCategory,
      );
}