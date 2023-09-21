import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  // Light Theme
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(230, 240, 250, 0)));

  // Dark Theme
  static ThemeData darkTheme(BuildContext context) => ThemeData(
      colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromRGBO(230, 240, 250, 0)));
}
