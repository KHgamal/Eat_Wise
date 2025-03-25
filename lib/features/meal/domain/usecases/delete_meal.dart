import '../repositories/meal_repository.dart';

class DeleteMeal {
  final MealRepository repository;

  DeleteMeal(this.repository);

  Future<void> call(String id) async {
    await repository.deleteMeal(id);
  }
}