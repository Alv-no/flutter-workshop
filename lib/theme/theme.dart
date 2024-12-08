import 'package:flutter/material.dart';

final ThemeData alvThemeData = ThemeData(
  fontFamily: "LeagueSpartan",
  primaryColor: const Color(0xFF243F4D), // Charcoal
  scaffoldBackgroundColor: const Color(0xFFF8F1E3), // Old Lace
  colorScheme: const ColorScheme(
    primary: Color(0xFF243F4D), // Charcoal
    primaryContainer: Color(0xFF9DAC86), // Olivine
    secondary: Color(0xFFE6C08D), // Tan
    secondaryContainer: Color(0xFFD8DCD3), // Alabaster
    surface: Color(0xFFF8F1E3), // Old Lace
    background: Color(0xFFF8F1E3), // Old Lace
    error: Colors.red, // Default error color
    onPrimary: Colors.white,
    onSecondary: Colors.black,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: Colors.white,
    brightness: Brightness.light,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF243F4D), // Charcoal
    foregroundColor: Colors.white,
    elevation: 0,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFFE6C08D), // Tan
      foregroundColor: const Color(0xFF243F4D),
    ),
  ),
  textTheme: const TextTheme(
    titleMedium: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Color(0xFF243F4D), // Charcoal
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Color(0xFF243F4D), // Charcoal
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      color: Color(0xFF9DAC86), // Olivine
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFFD8DCD3), // Alabaster
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Color(0xFF9DAC86), // Olivine
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(
        color: Color(0xFF243F4D), // Charcoal
      ),
    ),
    labelStyle: const TextStyle(
      color: Color(0xFF243F4D), // Charcoal
    ),
  ),
);
