import 'package:flutter/material.dart';
import 'package:leafy/tokens/color/reference_tokens.dart';

/// This class can be used to generate light and dark
/// theme from a single color

class ThemeProvider {
  late final ThemeData lightTheme;
  late final ThemeData darkTheme;

  ThemeProvider.fromSingleColor(Color color) {
    lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: color,
        brightness: Brightness.light,
      ),
    );

    darkTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: color,
        brightness: Brightness.dark,
      ),
    );

  }
}

final themeProvider = ThemeProvider.fromSingleColor(
  lfRefPrimaryLight,
);
