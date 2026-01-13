import 'package:flutter/material.dart';

class AppColors {
  static const Color lightBlueAccent = Colors.lightBlueAccent;
  static const Color lightOrange = Color(0xffFFD191);
  static const Color orange = Color(0xffE98B3F);
  static Color msgContainer = const Color(0xffF1F1F1).withAlpha(90);
  static Color grey = Colors.grey;
  static Color grayishBlue = Color(0xff455A64);
  // Gunmetal --> #263238
  static const MaterialColor lightOrangeSwatch = MaterialColor(
    0xffE98B3F, // Base color (Light Orange)
    <int, Color>{
      50: lightOrange,
      100: lightOrange,
      200: lightOrange,
      300: lightOrange,
      400: lightOrange,
      500: lightOrange,
      600: lightOrange,
      700: lightOrange,
      800: lightOrange,
      900: lightOrange,
    },
  );
}
