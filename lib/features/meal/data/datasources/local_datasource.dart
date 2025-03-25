import 'package:hive/hive.dart';
import '../models/meal_model.dart';

class LocalDataSource {
  static const String boxName = 'mealsBox';

  Future<void> init() async {
    await Hive.openBox<MealModel>(boxName);
  }

  Future<void> addMeal(MealModel meal) async {
    final box = Hive.box<MealModel>(boxName);
    await box.put(meal.id, meal);
  }

  Future<void> deleteMeal(String id) async {
    final box = Hive.box<MealModel>(boxName);
    await box.delete(id);
  }

  List<MealModel> getMeals() {
    final box = Hive.box<MealModel>(boxName);
    return box.values.toList();
  }
}