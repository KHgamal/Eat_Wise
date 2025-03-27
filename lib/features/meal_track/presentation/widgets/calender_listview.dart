import 'package:flutter/material.dart';

import 'day_container.dart';

class CalenderListView extends StatelessWidget {
  const CalenderListView({
    super.key,
    required ScrollController scrollController,
    required this.selectedDate,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;
  final DateTime selectedDate;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: DateTime(selectedDate.year, selectedDate.month + 1, 0).day,
        itemBuilder: (context, index) {
          final day = index + 1;
          final date = DateTime(selectedDate.year, selectedDate.month, day);
          final isSelected = date.day == selectedDate.day &&
              date.month == selectedDate.month &&
              date.year == selectedDate.year;
        
          return DayContainer(date: date, isSelected: isSelected, day: day);
        },
      ),
    );
  }
}