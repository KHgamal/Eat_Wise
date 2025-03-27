import 'package:eat_wise/features/meal_track/presentation/bloc/meal_bloc.dart';
import 'package:eat_wise/features/meal_track/presentation/bloc/meal_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/common/styles/colors_app.dart'; // Adjust import as needed

class MonthNavigationButton extends StatelessWidget {
  final bool isNext;
  final DateTime selectedDate;

  const MonthNavigationButton({
    super.key,
    required this.isNext,
    required this.selectedDate,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isNext ? Icons.arrow_right : Icons.arrow_left,
        color: AppColors.lightOrange,
      ),
      onPressed: () {
        final newMonth = DateTime(
          selectedDate.year,
          isNext ? selectedDate.month + 1 : selectedDate.month - 1,
         1, 
        );
        context.read<MealBloc>().add(MealEvent.selectDate(newMonth));
      },
    );
  }
}
