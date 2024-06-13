import 'package:flutter/material.dart';
import 'package:mawarstore/app/constant/colors_constant.dart';

class ThemeLight {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: Colors.white,
      // surfaceTintColor: Colors.white,
      centerTitle: false,
      titleTextStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0, color: Colors.white),
    ),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.white),
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
  );
}
