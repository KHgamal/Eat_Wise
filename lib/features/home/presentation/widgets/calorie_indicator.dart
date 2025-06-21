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
        radius: 70,
        lineWidth: 15.0,
        percent: percent,
        animation: true,
        circularStrokeCap: CircularStrokeCap.round,
       // backgroundColor: AppColors.lightOrange,
        progressColor: AppColors.orange,
        arcType: ArcType.HALF,
        arcBackgroundColor: AppColors.lightOrange,
        center: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 22,),
            const Text('🔥', style: TextStyle(fontSize: 20)),
            Text(
              '$consumed Kcal',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
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
