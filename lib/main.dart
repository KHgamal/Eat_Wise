import 'package:eat_wise/features/home/presentation/bloc/meal_bloc.dart';
import 'package:eat_wise/features/home/presentation/bloc/meal_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'core/app_bloc_observer.dart';
import 'core/common/styles/theme.dart';
import 'core/common/widgets/bottom_nav_bar.dart';
import 'core/di/core_injection.dart';
import 'features/home/meal_injection.dart';
import 'features/splash_screen/splash_view.dart';
import 'features/user/presentation/Controller/bloc/user_bloc.dart';
import 'features/user/presentation/Controller/bloc/user_event.dart';
import 'features/user/presentation/Controller/cubit/on_boarding_cubit.dart';
import 'features/user/presentation/pages/onboarding_flow.dart';
import 'features/user/user_injection.dart' as user;
import 'features/water_track/presentation/provider/water_provider.dart';
import 'features/water_track/presentation/views/water_track_view.dart';
import 'features/home/meal_injection.dart' as meal;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initCore();
  await user.initUserFeature();
  await initMealFeature();
   Bloc.observer = AppBlocObserver();
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
            create: (context) => user.sl<UserBloc>()..add(LoadUser()),
          ),
          BlocProvider(create: (_) => OnboardingCubit()),
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

// update user info repo not used 
// calculate daily calories is written , not usual usecase

// edit button null version --------------

// stucture & naming 

// portrait & LandScape responsive 