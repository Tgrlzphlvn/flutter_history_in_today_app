import 'package:flutter/material.dart';
import 'package:flutter_history_in_today_v7/core/colors/project_colors.dart';
import 'package:flutter_history_in_today_v7/product/constants/strings.dart';

class LightTheme {
  late final ThemeData theme;

  LightTheme() {
    theme = ThemeData(
        scaffoldBackgroundColor: ProjectColors.saian,
        appBarTheme: const AppBarTheme(
            color: ProjectColors.sakulta,
            iconTheme: IconThemeData(color: ProjectColors.salkim)),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline5: const TextStyle(
                color: ProjectColors.salkim,
                fontFamily: ProjectStrings.fontFamily,
                fontWeight: FontWeight.w800,
              ),
              subtitle1: const TextStyle(
                color: ProjectColors.salkim,
                fontFamily: ProjectStrings.fontFamily,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
              subtitle2: const TextStyle(
                color: ProjectColors.salkim,
                fontFamily: ProjectStrings.fontFamily,
                fontSize: 16,
                fontWeight: FontWeight.w600,
                height: 1.4,
              ),
            ),
        snackBarTheme: const SnackBarThemeData(
            backgroundColor: ProjectColors.sakulta,
            actionTextColor: ProjectColors.salkim,
            contentTextStyle: TextStyle(
                color: ProjectColors.salkim,
                fontFamily: ProjectStrings.fontFamily)));
  }
}
