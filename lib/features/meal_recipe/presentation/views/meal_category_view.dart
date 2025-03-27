import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/category_filter_widget.dart';
import '../widgets/meal_recipe_bloc.dart';
import '../widgets/search_field.dart';

class MealCategoryScreen extends StatelessWidget {

  const MealCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              const SearchField(),
              SizedBox(height: 16.h),
              const CategoryFilterWidget(),
              SizedBox(height: 16.h),
              const Expanded(
                child: MealRecipeBloc(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}