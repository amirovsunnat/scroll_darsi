import 'package:flutter/material.dart';

class AppColors {
  static const darkScaffoldBackgroundColor = Color(0xFF040C23);
  static const blackColor = Colors.black;
  static const lightScaffolBackgroundColor = Color(0xFFFFFFFF);
  static const darkBottomNavBarColor = Color(0xFF121931);
  static const mainColor = Color(0xFFA44AFF);
  static adaptiveTextColor(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? lightScaffolBackgroundColor
          : blackColor;
}
