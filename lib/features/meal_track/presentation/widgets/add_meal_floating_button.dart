import 'package:eat_wise/core/common/styles/colors_app.dart';
import 'package:flutter/material.dart';

import 'meal_form.dart';

class AddMealFloatingButton extends StatelessWidget {
  const AddMealFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape:const CircleBorder() ,
      backgroundColor: AppColors.lightGreen,
      foregroundColor: AppColors.darkGreen,
      onPressed: () => showModalBottomSheet(
          isScrollControlled: true,
        context: context,
         backgroundColor: Colors.white,
         shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12)
         ),
        builder: (_) => Padding(
          padding: EdgeInsets.only(
    bottom: MediaQuery.of(context).viewInsets.bottom, // Adjust for keyboard
          ),child: const MealForm()),
      ),
      child: const Icon(Icons.add),
    );
  }
}