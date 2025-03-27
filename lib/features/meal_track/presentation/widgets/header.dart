import 'package:eat_wise/core/common/styles/text_style.dart';
import 'package:eat_wise/features/meal_track/presentation/widgets/filte_men_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(             
      children: [
        const Spacer(),
        SizedBox(width: 44.w,),
        Text("Meal List", style:  Styles.textStyleBook20),
        const Spacer(),
        const FilterMenuButton()
      ],
    );
  }
}