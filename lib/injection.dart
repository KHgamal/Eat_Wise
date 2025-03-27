import 'package:eat_wise/features/meal_track/data/datasources/local_datasource.dart';
import 'package:eat_wise/features/meal_track/data/repositories/meal_repository_impl.dart';
import 'package:eat_wise/features/meal_track/domain/usecases/get_meals.dart';
import 'package:eat_wise/features/meal_track/domain/usecases/sort_meals.dart';
import 'package:eat_wise/features/meal_track/presentation/bloc/meal_bloc.dart';
import 'package:get_it/get_it.dart';

import 'features/meal_track/domain/repositories/meal_repository.dart';
import 'features/meal_track/domain/usecases/add_meal.dart';
import 'features/meal_track/domain/usecases/delete_meal.dart';


final sl = GetIt.instance;

Future<void> init() async {
  // Data Sources
  sl.registerLazySingleton<LocalDataSource>(() => LocalDataSource());
  
  // Repositories
  sl.registerLazySingleton<MealTrackRepository>(() => MealTrackRepositoryImpl(sl()));
  
  // Use Cases
  sl.registerLazySingleton(() => AddMeal(sl()));
  sl.registerLazySingleton(() => DeleteMeal(sl()));
  sl.registerLazySingleton(() => GetMeals(sl()));
  sl.registerLazySingleton(() => SortMeals());
  
  // Bloc
  sl.registerFactory(() => MealBloc(
    addMeal: sl(),
    deleteMeal: sl(),
    getMeals: sl(),
    sortMeals: sl(),
  ));
  
  // Initialize Hive
  await sl<LocalDataSource>().init();
}