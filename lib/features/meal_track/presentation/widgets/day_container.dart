import 'package:eat_wise/core/common/styles/colors_app.dart';
import 'package:eat_wise/features/meal_track/presentation/bloc/meal_bloc.dart';
import 'package:eat_wise/features/meal_track/presentation/bloc/meal_event.dart';
import 'package:eat_wise/features/meal_track/presentation/widgets/day_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DayContainer extends StatelessWidget {
  const DayContainer({
    super.key,
    required this.date,
    required this.isSelected,
    required this.day,
  });

  final DateTime date;
  final bool isSelected;
  final int day;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<MealTrackBloc>().add(MealTrackEvent.selectDate(date));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        width: 50,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.green : Colors.grey[200],
          borderRadius: BorderRadius.circular(25),
        ),
        child: DayNumberText(day: day, isSelected: isSelected, date: date),
      ),
    );
  }
}