import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_tdd/controllers/theme_controller.dart';
import 'package:flutter_tdd/theme/main_theme.dart';
import 'package:provider/provider.dart';
import './ui/main_screen.dart';

void main() {
  runApp(
    Provider(
      create: (_) => ThemeController(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: context.select((ThemeController theme) => theme.isDarkTheme)
            ? AppTheme.mainDarkTheme(context)
            : AppTheme.mainTheme(context),
        home: MainScreen(),
      ),
    );
  }
}
