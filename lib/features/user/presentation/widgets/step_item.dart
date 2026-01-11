import 'package:flutter/material.dart';

import '../../../../core/common/styles/colors_app.dart';

class StepItem extends StatelessWidget {
  final String text;
  final bool isDone;

  const StepItem({super.key, 
    required this.text,
    required this.isDone,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: Icon(
              isDone ? Icons.check_circle : Icons.radio_button_unchecked,
              key: ValueKey(isDone),
              color: isDone ? AppColors.orange : Colors.grey.shade400,
              size: 20,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                fontSize: 14,
                color:isDone ? Colors.black : Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}