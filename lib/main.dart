import 'package:eat_wise/features/meal_track/data/models/meal_model.dart';
import 'package:eat_wise/features/meal_track/presentation/bloc/meal_bloc.dart';
import 'package:eat_wise/features/meal_track/presentation/bloc/meal_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'core/common/styles/theme.dart';
import 'features/meal_recipe/presentation/bloc/meal_bloc.dart';
import 'features/splash_screen/splash_view.dart';
import 'injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MealTrackModelAdapter());
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MealTrackBloc>(
          create: (_) =>
              di.sl<MealTrackBloc>()..add(const MealTrackEvent.loadMeals()),
        ),
        BlocProvider(
          create: (_) => di.sl<MealBloc>(),
        ),
      ],
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (_, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Meal Tracker',
              theme: appTheme,
              home: const SplashScreen(),
            );
          }),
    );
  }
}