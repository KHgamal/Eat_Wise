import 'package:eat_wise/core/common/styles/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class CalorieIndicator extends StatelessWidget {
  final int consumed;
  final int goal;

  const CalorieIndicator({
    super.key,
    required this.consumed,
    required this.goal,
  });

  @override
  Widget build(BuildContext context) {
    final percent = (consumed / goal).clamp(0.0, 1.0);

    return Align(
    alignment: Alignment.topCenter,
    heightFactor: 0.5, 
      child: CircularPercentIndicator(
        radius: 80,
        lineWidth: 13.0,
        percent: percent,
        animation: true,
        circularStrokeCap: CircularStrokeCap.square,
        progressColor: AppColors.orange,
        arcType: ArcType.HALF,
        arcBackgroundColor: AppColors.msgContainer,
        center: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height:24,),
            const Text('🔥', style: TextStyle(fontSize: 20)),
            Text(
              '$consumed Kcal',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
             const SizedBox(height:6,),
            Text(
              'of $goal kcal',
              style: TextStyle(color: Colors.grey[400], fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
