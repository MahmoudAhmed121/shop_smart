import 'package:flutter/material.dart';
import 'package:shop_smart/core/constants/app_color.dart';

class AppTheme {
  static ThemeData themeData(
      {required bool isDarkTheme, required BuildContext context}) {
    return ThemeData(
      scaffoldBackgroundColor:
          isDarkTheme ? AppColor.darkScafoldColor : AppColor.lightScafoldColor,
      cardColor: isDarkTheme ? AppColor.darkCardColor : AppColor.lightCardColor,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
       useMaterial3: true,
    );
  }
}
