// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ThemeController on _ThemeControllerBase, Store {
  final _$isDarkThemeAtom = Atom(name: '_ThemeControllerBase.isDarkTheme');

  @override
  bool get isDarkTheme {
    _$isDarkThemeAtom.reportRead();
    return super.isDarkTheme;
  }

  @override
  set isDarkTheme(bool value) {
    _$isDarkThemeAtom.reportWrite(value, super.isDarkTheme, () {
      super.isDarkTheme = value;
    });
  }

  final _$primaryColorAtom = Atom(name: '_ThemeControllerBase.primaryColor');

  @override
  Color get primaryColor {
    _$primaryColorAtom.reportRead();
    return super.primaryColor;
  }

  @override
  set primaryColor(Color value) {
    _$primaryColorAtom.reportWrite(value, super.primaryColor, () {
      super.primaryColor = value;
    });
  }

  final _$accentColorAtom = Atom(name: '_ThemeControllerBase.accentColor');

  @override
  Color get accentColor {
    _$accentColorAtom.reportRead();
    return super.accentColor;
  }

  @override
  set accentColor(Color value) {
    _$accentColorAtom.reportWrite(value, super.accentColor, () {
      super.accentColor = value;
    });
  }

  final _$_ThemeControllerBaseActionController =
      ActionController(name: '_ThemeControllerBase');

  @override
  void changeThemeLigth() {
    final _$actionInfo = _$_ThemeControllerBaseActionController.startAction(
        name: '_ThemeControllerBase.changeThemeLigth');
    try {
      return super.changeThemeLigth();
    } finally {
      _$_ThemeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeThemeColor(bool isPrimaryColor, Color color) {
    final _$actionInfo = _$_ThemeControllerBaseActionController.startAction(
        name: '_ThemeControllerBase.changeThemeColor');
    try {
      return super.changeThemeColor(isPrimaryColor, color);
    } finally {
      _$_ThemeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isDarkTheme: ${isDarkTheme},
primaryColor: ${primaryColor},
accentColor: ${accentColor}
    ''';
  }
}
