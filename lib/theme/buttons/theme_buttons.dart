import 'package:flutter/material.dart';
import 'package:flutter_tdd/controllers/theme_controller.dart';
import 'package:provider/provider.dart';

abstract class ThemeButtons {
  static ButtonThemeData mainButtonTheme(BuildContext context) {
    final themeController = Provider.of<ThemeController>(context);
    return ButtonThemeData(
      padding: EdgeInsets.symmetric(
        vertical: 4,
        horizontal: 16,
      ),
      buttonColor: themeController.primaryColor,
      shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
