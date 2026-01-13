import 'package:eat_wise/core/common/styles/colors_app.dart';
import 'package:eat_wise/core/common/styles/text_style.dart';
import 'package:flutter/material.dart';

class HealthCounterContainer extends StatelessWidget {
  const HealthCounterContainer(
      {super.key,
      required this.title,
      required this.icon,
      required this.amount,
      required this.unit, required this.color});
  final String title;
  final IconData icon;
  final String amount;
  final String unit;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.msgContainer,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                child: Icon(icon , color: color,),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "$amount \t",
                  style: Styles.textStyleBook20,
                ),
                TextSpan(
                  text: unit,
                  style: Styles.textStyleBook16,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
