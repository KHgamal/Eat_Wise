import 'package:flutter/material.dart';

class GoalItem extends StatelessWidget {
  const GoalItem({
    super.key, required this.icon, required this.title,
  });

final String icon;
final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
         icon,
          style: const TextStyle(fontSize: 32),
        ),
        const SizedBox(width: 16),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}