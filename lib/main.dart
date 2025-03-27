import 'package:eat_wise/core/common/styles/colors_app.dart';
import 'package:eat_wise/features/meal_track/data/models/meal_model.dart';
import 'package:eat_wise/features/meal_track/presentation/bloc/meal_bloc.dart';
import 'package:eat_wise/features/meal_track/presentation/bloc/meal_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'features/splash_screen/splash_view.dart';
import 'injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(MealModelAdapter());
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => di.sl<MealBloc>()..add(const MealEvent.loadMeals()),
      child: ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,

          builder: (_, child) {
            return MaterialApp(
            
              debugShowCheckedModeBanner: false,
              title: 'Meal Tracker',
              theme: ThemeData(
                useMaterial3: false,
                primarySwatch: AppColors.lightGreenSwatch,
                inputDecorationTheme: InputDecorationTheme(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide:  BorderSide(color:AppColors.msgContainer, width: 2), // Remove default border
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.msgContainer, width: 2),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.r),
                    borderSide: BorderSide(color: AppColors.msgContainer,width: 1),
                  ),
                  labelStyle: const TextStyle(color: AppColors.orange)
                 // contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
                ),
              ),
              home: const SplashScreen(),
            );
          }),
    );
  }
}
