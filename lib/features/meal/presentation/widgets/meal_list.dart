import 'dart:io';
import 'package:eat_wise/core/common/styles/colors_app.dart';
import 'package:eat_wise/core/common/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../domain/entities/meal.dart';
import '../bloc/meal_bloc.dart';
import '../bloc/meal_event.dart';

class MealList extends StatelessWidget {
  final List<Meal> meals;

  const MealList({super.key, required this.meals});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) {
        final meal = meals[index];
        return Container(
          padding: EdgeInsets.all(12.w),
          margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(color: AppColors.msgContainer, width: 2)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      meal.name,
                      style: Styles.textStyleBook18,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      DateFormat('yyyy-MM-dd HH:mm').format(meal.time),
                      style: Styles.textStyleBook14,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '${meal.calories} cal',
                      style:  Styles.textStyleBook14.copyWith(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.h),
                    ElevatedButton(
                      onPressed: () => context.read<MealBloc>().add(
                          MealEvent.deleteMeal(
                              meal.id)), // Add delete function here
                      style: ElevatedButton.styleFrom(
                        foregroundColor: AppColors.orange ,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        side: const BorderSide(color:AppColors.orange),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      child: const Text("Delete"),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 12.w),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.r),
                child: meal.photoPath != null
                    ? Image.file(
                        File(meal.photoPath!),
                        width: 80.w,
                        height: 80.h,
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
            ],
          ),
        );
      },
    );
  }
}
