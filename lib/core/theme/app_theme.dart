import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color.fromARGB(255, 23, 42, 110);
  static const Color priceColor = Color(0xFF1B4FCC);
  static const Color background = Color(0xFFF5F6FA);
  static const Color errorColor = Color(0xFFB00020);

  static ThemeData get theme => ThemeData(
    scaffoldBackgroundColor: background,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primary,
      primary: primary,
      error: errorColor,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      foregroundColor: Color(0xFF1C1C1E),
      elevation: 0,
      centerTitle: false,
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      foregroundColor: Colors.white,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        minimumSize: const Size(double.infinity, 52),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      ),
    ),
  );
}
