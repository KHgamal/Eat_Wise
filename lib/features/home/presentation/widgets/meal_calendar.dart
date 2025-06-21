import 'package:eat_wise/core/common/styles/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../meal_track/presentation/bloc/meal_bloc.dart';
import '../../../meal_track/presentation/bloc/meal_event.dart';

class MealCalendar extends StatelessWidget {
  const MealCalendar(
      {super.key, required this.focusedDay, this.selectedDayPredicate});
  final DateTime focusedDay;
  final bool Function(DateTime)? selectedDayPredicate;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: TableCalendar(
        focusedDay: focusedDay,
        selectedDayPredicate: selectedDayPredicate,
        onDaySelected: (selectedDay, focusedDay) {
          context
              .read<MealTrackBloc>()
              .add(MealTrackEvent.selectDate(selectedDay));
        },
        firstDay: DateTime.utc(2025, 1, 1),
        lastDay: DateTime.utc(2030, 12, 31),
        calendarFormat: CalendarFormat.week,
        headerStyle: const HeaderStyle(
          formatButtonVisible: false, // Hides the "Month" button
          titleCentered: true,
        ),
        calendarStyle: const CalendarStyle(
          todayDecoration: BoxDecoration(
            color: AppColors.lightGreen,
            shape: BoxShape.circle,
          ),
          selectedDecoration: BoxDecoration(
            color: AppColors.green,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}