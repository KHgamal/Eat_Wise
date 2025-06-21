import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/common/styles/colors_app.dart';
import '../../../../core/common/styles/text_style.dart';
import '../../../meal_track/domain/entities/meal.dart';

class MealTypeBox extends StatelessWidget {
  const MealTypeBox({
    super.key,
    required this.mealType,
    this.onPressed,
    required this.meals,
    required this.onDeleteMeal, // Callback for deleting a meal
  });

  final String mealType;
  final void Function()? onPressed;
  final List<MealTrack> meals;
  final void Function(String mealId) onDeleteMeal; // Callback to handle deletion

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: AppColors.msgContainer, width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 12, right: 12),
            child: Row(
              children: [
                Text(
                  mealType,
                  style: Styles.textStyleBold16,
                ),
                const Spacer(),
                IconButton(
                  onPressed: onPressed,
                  icon: Icon(
                    Icons.add_circle,
                    color: AppColors.grey,
                  ),
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                ),
              ],
            ),
          ),
          const Divider(thickness: 1),
          // Render the list of meals
          meals.isEmpty
              ? Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'No $mealType meals added yet.',
                    style: TextStyle(color: AppColors.grey),
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true, // Important for nested scrolling
                  physics: const NeverScrollableScrollPhysics(), // Prevent inner scroll
                  itemCount: meals.length,
                  itemBuilder: (context, index) {
                    final meal = meals[index];
                    return ListTile(
                      title: Text('${meal.name} - ${meal.calories} kcal'),
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => onDeleteMeal(meal.id),
                      ),
                    );
                  },
                ),
        ],
      ),
    );
  }
}