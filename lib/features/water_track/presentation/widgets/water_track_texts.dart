import 'package:flutter/material.dart';

import '../../../../core/common/styles/colors_app.dart';

class WaterTrackTexts extends StatelessWidget {
  const WaterTrackTexts({
    super.key,
    required double currentAmount,
    required this.remaining,
  }) : _currentAmount = currentAmount;

  final double _currentAmount;
  final double remaining;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('${_currentAmount.toStringAsFixed(0)}ml',
                style: TextStyle(fontSize: 40, color: AppColors.grey)),
            Text('Remaining ${remaining.toStringAsFixed(0)}ml',
                style:  TextStyle(fontSize: 16, color: AppColors.msgContainer)),
          ],
        ),
      ),
    );
  }
}