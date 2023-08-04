import 'package:flutter/material.dart';
import 'package:shop_smart/core/constants/app_color.dart';
import 'package:shop_smart/core/utils/text_style.dart';

class AppTheme {
  static ThemeData themeData(
      {required bool isDarkTheme, required BuildContext context}) {
    return ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: isDarkTheme
            ? AppColor.darkScafoldColor
            : AppColor.lightScafoldColor,
        titleTextStyle: Styles.textStyle16
            .copyWith(color: isDarkTheme ? Colors.white : Colors.black),
      ),
      scaffoldBackgroundColor:
          isDarkTheme ? AppColor.darkScafoldColor : AppColor.lightScafoldColor,
      cardColor: isDarkTheme ? AppColor.darkCardColor : AppColor.lightCardColor,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light,
      useMaterial3: true,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        contentPadding: const EdgeInsets.all(8),
       enabledBorder: _borderDone(isDarkTheme),
        focusedBorder: _borderDone(isDarkTheme),
        errorBorder: _borderError(context),
        focusedErrorBorder: _borderError(context),
      ),
    );
  }
}

InputBorder _borderDone(bool isDarkTheme) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: isDarkTheme ? AppColor.blackColor : AppColor.lightScafoldColor,
    ),
    borderRadius: BorderRadius.circular(8),
  );
}

InputBorder _borderError(BuildContext context) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: Theme.of(context).colorScheme.error,
    ),
    borderRadius: BorderRadius.circular(8),
  );
}

