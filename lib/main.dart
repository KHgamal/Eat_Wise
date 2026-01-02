import 'package:eat_wise/features/home/data/models/meal_model.dart';
import 'package:eat_wise/features/home/presentation/bloc/meal_bloc.dart';
import 'package:eat_wise/features/home/presentation/bloc/meal_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'core/common/styles/theme.dart';
import 'core/common/widgets/bottom_nav_bar.dart';
import 'core/di/core_injection.dart';
import 'features/home/meal_injection.dart';
import 'features/splash_screen/splash_view.dart';
import 'features/user/data/models/user_model.dart';
import 'features/user/presentation/bloc/user_bloc.dart';
import 'features/user/presentation/bloc/user_event.dart';
import 'features/user/presentation/pages/onboarding_flow.dart';
import 'features/user/user_injection.dart' as user;
import 'features/water_track/presentation/provider/water_provider.dart';
import 'features/water_track/presentation/views/water_track_view.dart';
import 'features/home/meal_injection.dart' as meal;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.registerAdapter(MealTrackModelAdapter());
  Hive.registerAdapter(UserModelAdapter());
  Hive.registerAdapter(GenderAdapter());
  Hive.registerAdapter(GoalAdapter());
  Hive.registerAdapter(ActivityLevelAdapter());
  await initCore();
  await user.initUserFeature();
  await initMealFeature();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WaterProvider(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<MealTrackBloc>(
            create: (_) =>
                meal.sl<MealTrackBloc>()..add(const MealTrackEvent.loadMeals()),
          ),
          BlocProvider<UserBloc>(
            create: (context) => user.sl<UserBloc>()..add(LoadUserEvent()),
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
                home: const OnboardingFlow(),
              );
            }),
      ),
    );
  }
}
