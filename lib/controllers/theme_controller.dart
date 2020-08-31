import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
part 'theme_controller.g.dart';

class ThemeController = _ThemeControllerBase with _$ThemeController;

abstract class _ThemeControllerBase with Store {
  @observable
  bool isDarkTheme = false;

  @action
  void changeThemeLigth() => isDarkTheme = !isDarkTheme;

  @observable
  Color primaryColor = Colors.deepPurpleAccent;

  @observable
  Color accentColor = Colors.white;

  @action
  void changeThemeColor(bool isPrimaryColor, Color color) =>
      isPrimaryColor ? primaryColor = color : accentColor = color;

}
