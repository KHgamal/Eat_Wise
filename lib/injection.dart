import 'package:dio/dio.dart';
import 'package:eat_wise/features/meal_track/data/datasources/local_datasource.dart';
import 'package:eat_wise/features/meal_track/data/repositories/meal_repository_impl.dart';
import 'package:eat_wise/features/meal_track/domain/usecases/get_meals.dart';
import 'package:eat_wise/features/meal_track/presentation/bloc/meal_bloc.dart';
import 'package:get_it/get_it.dart';

import 'features/meal_recipe/data/datasources/api_service.dart';
import 'features/meal_recipe/data/repositories/meal_repository_impl.dart';
import 'features/meal_recipe/domain/repositories/meal_repository.dart';
import 'features/meal_recipe/presentation/bloc/meal_bloc.dart';
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
  
  // Bloc
  sl.registerFactory(() => MealTrackBloc(
    addMeal: sl(),
    deleteMeal: sl(),
    getMeals: sl(),
  ));
  
  // Initialize Hive
  await sl<LocalDataSource>().init();

  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => ApiService(sl<Dio>()));
  sl.registerLazySingleton<MealRepository>(
    () => MealRepositoryImpl(sl<ApiService>()),
  );
  sl.registerFactory(() => MealBloc(sl<MealRepository>()));
}