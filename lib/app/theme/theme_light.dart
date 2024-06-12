import 'package:flutter/material.dart';
import 'package:mawarstore/app/theme/colors.dart';

class ThemeLight {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      // foregroundColor: Colors.white,
      // surfaceTintColor: Colors.white,
      centerTitle: false,
      titleTextStyle: const TextStyle(
          fontWeight: FontWeight.w500, fontSize: 20.0, color: Colors.white),
    ),
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
  );
}
