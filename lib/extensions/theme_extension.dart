import 'package:flutter/material.dart';
import 'package:flutterpersonlist/theme/resources/app_theme.dart';

/// Theme related extensions

extension ThemeEx on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  AppTheme get theme => isDarkMode ? getIt.get<DarkAppTheme>() : getIt.get<LightAppTheme>();
}

/// Text Styles related extensions
extension TextStylesEx on BuildContext {
  static const _defaultFontFamily = 'Roboto';

  TextStyle get headingMedium => const TextStyle(
        fontFamily: _defaultFontFamily,
        fontWeight: FontWeight.w500,
        fontSize: 12,
        height: 1.4,
      );

  TextStyle get cardTitle => const TextStyle(
        fontFamily: _defaultFontFamily,
        fontWeight: FontWeight.bold,
        fontSize: 16,
        height: 1.4,
      );
}
