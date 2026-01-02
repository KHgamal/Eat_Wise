import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:dio/dio.dart';

final sl = GetIt.instance;

Future<void> initCore() async {
  // Hive 
  await Hive.initFlutter();

  // Dio
  sl.registerLazySingleton<Dio>(() => Dio());
}
