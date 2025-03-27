import 'package:eat_wise/features/meal_track/presentation/widgets/chosen_month_row.dart';
import 'package:flutter/material.dart';

import 'calender_listview.dart';

class DateCalender extends StatelessWidget {
  const DateCalender({
    super.key,
    required ScrollController scrollController, required this.selectedDate,
  }) : _scrollController = scrollController;

  final ScrollController _scrollController;
  final DateTime selectedDate;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ChosenMonthRow(selectedDate: selectedDate,),
        const SizedBox(height: 8),
        CalenderListView(scrollController: _scrollController, selectedDate: selectedDate),
      ],
    );
  }
}