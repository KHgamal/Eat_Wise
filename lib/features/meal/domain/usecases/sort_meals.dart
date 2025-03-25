import '../entities/meal.dart';

class SortMeals {
  List<Meal> call(List<Meal> meals, String sortBy) {
    switch (sortBy) {
      case 'name':
        return meals..sort((a, b) => a.name.compareTo(b.name));
      case 'calories':
        return meals..sort((a, b) => a.calories.compareTo(b.calories));
      case 'time':
        return meals..sort((a, b) => a.time.compareTo(b.time));
      default:
        return meals;
    }
  }
}