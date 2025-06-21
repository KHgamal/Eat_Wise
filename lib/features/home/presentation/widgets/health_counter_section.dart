
import 'package:flutter/material.dart';

import '../../../../core/common/styles/colors_app.dart';
import 'health_container.dart';

class HealthCounterSection extends StatelessWidget {
  const HealthCounterSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: HealthCounterContainer(
          unit: "steps",
          color: AppColors.orange,
          amount: "5000",
          icon: Icons.directions_walk,
          title: "Steps to \nwalk",
        )),
        SizedBox(
          width: 8,
        ),
        Expanded(
            child: HealthCounterContainer(
          unit: "glass",
          color: AppColors.lightBlueAccent,
          amount: "12",
          icon: Icons.water_drop,
          title: "Drink \nwater",
        )),
      ],
    );
  }
}