library app_theme;

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
part 'app_colors.dart';
part 'app_theme_interface.dart';
part 'dark_app_theme.dart';
part 'light_app_theme.dart';

final getIt = GetIt.instance;

ThemeData lightMaterialThemeData() {
  final lightAppTheme = getIt.get<LightAppTheme>();
  return ThemeData(
    fontFamily: 'Roboto',
    primaryColor: lightAppTheme.primaryColor,
    colorScheme: ColorScheme.light(
      primary: lightAppTheme.primaryColor,
    ),
  );
}

ThemeData darkMaterialThemeData() {
  final darkAppTheme = getIt.get<DarkAppTheme>();
  return ThemeData(
    fontFamily: 'Roboto',
    primaryColor: darkAppTheme.primaryColor,
    colorScheme: ColorScheme.dark(
      primary: darkAppTheme.primaryColor,
    ),
  );
}
