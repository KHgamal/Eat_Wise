import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DayNumberText extends StatelessWidget {
  const DayNumberText({
    super.key,
    required this.day,
    required this.isSelected,
    required this.date,
  });

  final int day;
  final bool isSelected;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$day',
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          DateFormat('E').format(date).substring(0, 3),
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}