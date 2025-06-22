import '../repositories/meal_repository.dart';

class DeleteMeal {
  final MealTrackRepository repository;

  DeleteMeal(this.repository);

  Future<void> call(String id) async {
    await repository.deleteMeal(id);
  }
}