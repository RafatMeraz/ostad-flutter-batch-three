import 'package:flutter/material.dart';

class ThemeModeController {
  ValueNotifier<ThemeMode> themeMode = ValueNotifier(ThemeMode.light);

  void changeThemeMode(ThemeMode mode) {
    themeMode.value = mode;
  }

  void toggleThemeMode() {
    if (themeMode.value == ThemeMode.light) {
      themeMode.value = ThemeMode.dark;
    } else {
      themeMode.value = ThemeMode.light;
    }
  }

  void saveCurrentThemeMode() {
    // todo : save last theme mode
  }
}