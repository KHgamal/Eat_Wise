import '../../domain/entities/meal.dart';
import '../../domain/repositories/meal_repository.dart';
import '../datasources/local_datasource.dart';
import '../models/meal_model.dart';

class MealRepositoryImpl implements MealRepository {
  final LocalDataSource localDataSource;

  MealRepositoryImpl(this.localDataSource);

  @override
  Future<void> addMeal(Meal meal) async {
    final mealModel = MealModel(
      id: meal.id,
      name: meal.name,
      calories: meal.calories,
      time: meal.time,
      photoPath: meal.photoPath,
    );
    await localDataSource.addMeal(mealModel);
  }

  @override
  Future<void> deleteMeal(String id) async {
    await localDataSource.deleteMeal(id);
  }

  @override
  List<Meal> getMeals() {
    final mealModels = localDataSource.getMeals();
    return mealModels
        .map((model) => Meal(
              id: model.id,
              name: model.name,
              calories: model.calories,
              time: model.time,
              photoPath: model.photoPath,
            ))
        .toList();
  }
}