import 'package:eat_wise/features/meal_recipe/presentation/bloc/meal_bloc.dart';
import 'package:eat_wise/features/meal_recipe/presentation/bloc/meal_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/styles/colors_app.dart';

class CategoryFilterWidget extends StatelessWidget {
  const CategoryFilterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ['Beef', 'Chicken', 'Dessert', 'Seafood', 'Vegetarian'];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: categories
            .map(
              (category) => Padding(
                padding: EdgeInsets.only(right: 8.w),
                child: ElevatedButton(
                  onPressed: () => context.read<MealBloc>().add(
                        MealEvent.filterByCategory(category),
                      ),
                      style: ElevatedButton.styleFrom(
                  foregroundColor: AppColors.green,
                  side: const BorderSide(color: AppColors.lightGreen),
                ),
                  child: Text(category),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}