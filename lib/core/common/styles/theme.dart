import 'package:eat_wise/core/common/styles/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

ThemeData appTheme = ThemeData(
  useMaterial3: false,

  primarySwatch: AppColors.lightGreenSwatch,

  // elevated button
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: AppColors.orange,
      backgroundColor: Colors.transparent,
      elevation: 0,
      side: const BorderSide(color: AppColors.orange),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.r),
      ),
    ),
  ),
 
 // input fields
  inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(
            color: AppColors.msgContainer, width: 2), // Remove default border
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.msgContainer, width: 2),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12.r),
        borderSide: BorderSide(color: AppColors.msgContainer, width: 1),
      ),
      labelStyle: const TextStyle(color: AppColors.orange)),
);
