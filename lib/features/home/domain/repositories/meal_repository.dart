import '../entities/meal.dart';

abstract class MealTrackRepository {
  Future<void> addMeal(MealTrack meal); 
  Future<void> deleteMeal(String id);
  List<MealTrack> getMeals(); 
  List<MealTrack> getMealsByTypeAndDate(String mealType, DateTime date); 
}
