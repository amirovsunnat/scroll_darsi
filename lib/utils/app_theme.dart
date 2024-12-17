import 'package:flutter/material.dart';
import 'package:oynani_scroll_qilish/utils/app_colors.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData.dark().copyWith(
    brightness: Brightness.dark,
    primaryColor: AppColors.mainColor,
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.darkScaffoldBackgroundColor),
    scaffoldBackgroundColor: AppColors.darkScaffoldBackgroundColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkBottomNavBarColor,
    ),
  );

  static ThemeData lightTheme = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      centerTitle: true,
      backgroundColor: AppColors.lightScaffolBackgroundColor,
    ),
    brightness: Brightness.light,
    primaryColor: AppColors.mainColor,
    scaffoldBackgroundColor: AppColors.lightScaffolBackgroundColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.lightScaffolBackgroundColor,
    ),
  );
}
