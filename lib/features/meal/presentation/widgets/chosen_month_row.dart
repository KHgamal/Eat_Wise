import 'package:eat_wise/core/common/styles/text_style.dart';
import 'package:eat_wise/features/meal/presentation/widgets/month_navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChosenMonthRow extends StatelessWidget {
  const ChosenMonthRow({
    super.key, required this.selectedDate,
  });
   final DateTime selectedDate;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
       MonthNavigationButton(isNext: false,selectedDate: selectedDate,),
        Text(
          DateFormat('MMMM').format(selectedDate),
          style:Styles.textStyleBook18,
        ),
        MonthNavigationButton(isNext: true,selectedDate: selectedDate,),
      ],
    );
  }
}