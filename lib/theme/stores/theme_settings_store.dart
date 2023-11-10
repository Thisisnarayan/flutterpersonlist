import 'package:flutter/material.dart' show ThemeMode;
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'theme_settings_store.g.dart';

const _themeModeNames = {
  ThemeMode.light: 'light',
  ThemeMode.dark: 'dark',
  ThemeMode.system: 'system',
};

@injectable
class ThemeSettingsStore = _ThemeSettingsStore with _$ThemeSettingsStore;

abstract class _ThemeSettingsStore with Store {
  @observable
  ThemeMode? _themeMode = ThemeMode.system;

  @computed
  ThemeMode get themeMode => _themeMode ?? ThemeMode.system;

  @action
  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
  }

  // // Add a method to update theme based on system theme
  // void updateThemeBasedOnSystem() {
  //   // Implement logic to determine system theme
  //   // For example, you can use platform-specific code or a package like `device_info`
  //   // to get the current platform theme.
  //   // For simplicity, I'm assuming a method `getSystemTheme()` that returns a ThemeMode.

  //   ThemeMode systemTheme = getSystemTheme();
  //   if (_themeMode == ThemeMode.system) {
  //     setThemeMode(systemTheme);
  //   }
  // }

  // Add any other methods or computed properties as needed.
}
