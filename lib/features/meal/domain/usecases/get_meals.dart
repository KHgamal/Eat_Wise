import '../entities/meal.dart';
import '../repositories/meal_repository.dart';

class GetMeals {
  final MealRepository repository;

  GetMeals(this.repository);

  List<Meal> call() {
    return repository.getMeals();
  }
}