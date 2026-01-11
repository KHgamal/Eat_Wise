import 'package:eat_wise/features/home/data/datasources/local_datasource.dart';
import 'package:eat_wise/features/home/data/repositories/meal_repository_impl.dart';
import 'package:eat_wise/features/home/domain/usecases/get_meals.dart';
import 'package:eat_wise/features/home/presentation/bloc/meal_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'data/models/meal_model.dart';
import 'domain/repositories/meal_repository.dart';
import 'domain/usecases/add_meal.dart';
import 'domain/usecases/delete_meal.dart';

final sl = GetIt.instance;

Future<void> initMealFeature() async {

  Hive.registerAdapter(MealTrackModelAdapter());

  // Data Sources
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSource());
  
  // Repositories
  sl.registerLazySingleton<MealTrackRepository>(() => MealTrackRepositoryImpl(sl()));
  
  // Use Cases
  sl.registerLazySingleton(() => AddMeal(sl()));
  sl.registerLazySingleton(() => DeleteMeal(sl()));
  sl.registerLazySingleton(() => GetMeals(sl()));
  
  // Bloc
  sl.registerFactory(() => MealTrackBloc(
    addMeal: sl(),
    deleteMeal: sl(),
    getMeals: sl(),
  ));
  
  // Initialize Hive
  await sl<LocalDataSource>().init();
}