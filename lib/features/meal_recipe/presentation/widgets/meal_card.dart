import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../domain/entities/meal.dart';
import '../bloc/meal_bloc.dart';
import '../bloc/meal_event.dart';
import '../bloc/meal_state.dart';
import '../views/meal_detail_screen.dart';
import 'meal_photo.dart';
import 'meal_title.dart';

class MealCard extends StatelessWidget {
  final Meal meal;

  const MealCard({super.key, required this.meal});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=> _navigateToMealDetails(context,meal.id),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MealPhoto(meal:  meal.thumbnail ?? ''),
            MealTitle(meal: meal.name),
          ],
        ),
      ),
    );
  }
}

  void _navigateToMealDetails(BuildContext context, String id) {
    context.read<MealBloc>().add(MealEvent.fetchMealDetails(id));
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocListener<MealBloc, MealState>(
          listener: (context, state) {
            state.whenOrNull(
              detailLoaded: (detailedMeal) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => MealDetailScreen(meal: detailedMeal),
                  ),
                );
              },
              error: (message) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(message)),
                );
              },
            );
          },
          child: const Center(child: CircularProgressIndicator()), 
        ),
      ),
    ).then((_) {
      context.read<MealBloc>().add(const MealEvent.resetToLastLoaded());
    });
  }