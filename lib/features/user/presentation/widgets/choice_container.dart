import 'package:flutter/material.dart';

import '../../../../core/common/styles/colors_app.dart';

class ChoiceContainer extends StatelessWidget {
  const ChoiceContainer(
      {super.key, this.onTap, required this.isSelected, required this.child});
  final void Function()? onTap;
  final bool isSelected;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          border: Border.all(
            color: isSelected ? AppColors.orange : AppColors.msgContainer,
            width: isSelected ? 2 : 1,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.03),
              blurRadius: 6,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: child,
      ),
    );
  }
}
