import '../entities/meal.dart';
import '../repositories/meal_repository.dart';

class GetMeals {
  final MealTrackRepository repository;

  GetMeals(this.repository);

  List<MealTrack> call(String mealType, DateTime date) {
    return repository.getMealsByTypeAndDate(mealType , date);
  }
}