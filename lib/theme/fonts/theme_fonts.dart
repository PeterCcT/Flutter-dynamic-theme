import 'package:flutter/material.dart';
import 'package:flutter_tdd/controllers/theme_controller.dart';
import 'package:provider/provider.dart';

class ThemeFonts {
  static TextTheme mainTextThemes(BuildContext context) {
    final controller = Provider.of<ThemeController>(context);
    return TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
        fontSize: 26,
      ),
      headline6: TextStyle(
        color: controller.isDarkTheme ? Colors.white : Colors.black,
        fontSize: 16,
      ),
      button: TextStyle(
        color: controller.primaryColor == Colors.white
            ? Colors.black
            : Colors.white,
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
