import 'package:flutter/material.dart';

class StepIndicator extends StatelessWidget {
  final int currentStep; // 1,2,3,4
  final int totalSteps;

  const StepIndicator({
    super.key,
    required this.currentStep,
    this.totalSteps = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(totalSteps, (index) {
        final isActive = index < currentStep;
        return Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 4),
            height: 4,
            decoration: BoxDecoration(
              color: isActive ? Colors.black : Colors.grey.shade300,
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
      }),
    );
  }
}
