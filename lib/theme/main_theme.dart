import 'package:flutter/material.dart';
import 'package:flutter_tdd/controllers/theme_controller.dart';
import 'package:provider/provider.dart';
import 'fonts/theme_fonts.dart';
import 'buttons/theme_buttons.dart';

class AppTheme {
  static ThemeData mainTheme(BuildContext context) {
    final controller = Provider.of<ThemeController>(context);
    return ThemeData.light().copyWith(
      brightness: Brightness.light,
      primaryColor: controller.primaryColor,
      accentColor: controller.accentColor,
      textTheme: ThemeFonts.mainTextThemes(context),
      buttonTheme: ThemeButtons.mainButtonTheme(context),
    );
  }

  static mainDarkTheme(BuildContext context) {
    final controller = Provider.of<ThemeController>(context);
    return ThemeData.dark().copyWith(
      brightness: Brightness.light,
      primaryColor: controller.primaryColor,
      accentColor: controller.accentColor,
      buttonTheme: ThemeButtons.mainButtonTheme(context),
      textTheme: ThemeFonts.mainTextThemes(context).copyWith(
        bodyText1: TextStyle(
          color: Colors.white,
          fontSize: 26,
        ),
      ),
    );
  }
}
