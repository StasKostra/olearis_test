import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
        fontFamily: 'SourceSans3',
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(
          primary: Colors.blue,
          secondary: Colors.black,
        ),
        useMaterial3: true,
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w500, fontSize: 20),
            titleLarge: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30)));
  }
}
