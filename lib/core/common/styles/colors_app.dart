import 'package:flutter/material.dart';

class AppColors {
  static const Color lightOrange = Color(0xffFFD191);

  static const Color lightGreen = Color(0xffB3E892);
  static const Color green = Color(0xff6AB054);
  static const Color darkGreen = Color(0xff316A30);
 static const Color orange = Color(0xffD48342);
  static Color msgContainer = const Color(0xffEFEFF0);
  static Color grey =  Colors.grey;
 static const MaterialColor lightGreenSwatch =  MaterialColor(
  0xffB3E892, // Base color (Light Orange)
  <int, Color>{
    50: lightGreen,
    100:lightGreen,
    200:lightGreen,
    300:lightGreen,
    400:lightGreen,
    500:lightGreen,
    600:lightGreen,
    700:lightGreen,
    800:lightGreen,
    900:lightGreen,
  },
);

}
