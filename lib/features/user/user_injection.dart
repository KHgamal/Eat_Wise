import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import 'data/datasources/local_user_datasource.dart';
import 'data/models/user_model.dart';
import 'data/repositories/user_repository_impl.dart';
import 'domain/repositories/user_repository.dart';

import 'domain/usecases/calculate_daily_calories.dart';
import 'domain/usecases/get_user_info.dart';
import 'domain/usecases/save_user_info.dart';
import 'presentation/bloc/user_bloc.dart';

final sl = GetIt.instance;

Future<void> initUserFeature() async {
  // Register adapters
  //  Hive.registerAdapter(UserModelAdapter());

  // Open box
   await Hive.openBox<UserModel>(UserLocalDataSourceImpl.boxName);

  // Data source
  sl.registerLazySingleton<UserLocalDataSource>(
    () => UserLocalDataSourceImpl(),
  );

  // Repository
  sl.registerLazySingleton<UserRepository>(
    () => UserRepositoryImpl(localDataSource: sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => SaveUserInfo(sl()));
  sl.registerLazySingleton(() => GetUserInfo(sl()));
  sl.registerLazySingleton(() => CalculateDailyCalories());

  // Bloc
  sl.registerFactory(
    () => UserBloc(
      calculateDailyCalories: sl(),
      saveUserInfo: sl(),
      getUserInfo: sl(),
    ),
  );
}
