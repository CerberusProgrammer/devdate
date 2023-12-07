import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

final themeProvider =
    StateNotifierProvider<ThemeNotifier, ThemeData>((ref) => ThemeNotifier());

class ThemeNotifier extends StateNotifier<ThemeData> {
  ThemeNotifier() : super(lightTheme);

  static final lightTheme = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.red,
    useMaterial3: true,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: Colors.red,
    useMaterial3: true,
  );

  void toggleTheme() {
    state = state.brightness == Brightness.light ? darkTheme : lightTheme;
  }
}
