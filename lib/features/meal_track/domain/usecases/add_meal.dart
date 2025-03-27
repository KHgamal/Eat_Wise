import '../entities/meal.dart';
import '../repositories/meal_repository.dart';

class AddMeal {
  final MealTrackRepository repository;

  AddMeal(this.repository);

  Future<void> call(MealTrack meal) async {
    await repository.addMeal(meal);
  }
}