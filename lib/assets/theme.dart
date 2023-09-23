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
          seedColor: const Color.fromRGBO(230, 240, 250, 0)),
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.white))),
      primaryTextTheme: const TextTheme(
          titleMedium: TextStyle(
              fontSize: 42,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(5, 48, 85, 1)),
          titleSmall: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(17, 57, 92, 1)),
          labelMedium:
              TextStyle(fontSize: 18, color: Color.fromRGBO(5, 48, 85, 1))));
}
