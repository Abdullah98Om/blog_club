import 'package:blog_club/core/theme/app_color.dart';
import 'package:blog_club/core/util/constant.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    fontFamily: AppFonts.fontEn,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      surface: AppColor.darkGrayColor,
      primary: AppColor.primaryColor,
      secondary: AppColor.secondaryColor,
    ),
    scaffoldBackgroundColor: AppColor.backgroundColor,

    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.backgroundColor,
      elevation: 0,
      foregroundColor: AppColor.darkBlueTextColor,
      centerTitle: true,
    ),
  );
}
