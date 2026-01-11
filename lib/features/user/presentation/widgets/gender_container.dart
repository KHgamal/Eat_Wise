import 'package:flutter/material.dart';

import '../../../../core/common/styles/colors_app.dart';

class GenderContainer extends StatelessWidget {
  const GenderContainer(
      {super.key,
      required this.text,
      required this.icon,
      required this.isActive,required this.onTap});
  final String text;
  final String icon;
  final bool isActive;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
      onTap: onTap, // Make the entire widget tappable
          child: Container(
            padding: const EdgeInsets.all(18),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isActive ? AppColors.orange : AppColors.grey,
              ),
            ),
            child: Image.asset(icon , width: 50 ,  height: 50, color: isActive ? AppColors.orange : Colors.black ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Text(text,
            style: TextStyle(
                fontSize: 18,
                color: isActive ? AppColors.orange : Colors.black))
      ],
    );
  }
}
