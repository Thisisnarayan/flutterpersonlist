import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterpersonlist/app.dart';
import 'package:flutterpersonlist/di/di.dart';
import 'package:flutterpersonlist/theme/resources/app_theme.dart';
import 'package:flutterpersonlist/theme/stores/theme_settings_store.dart';

Future<void> main() async {
  /// Setting up localisations
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  Intl.defaultLocale = 'en_US';
  setup();
  runApp(
    EasyLocalization(supportedLocales: const [
      Locale('en'),
    ], path: 'assets/translations', fallbackLocale: const Locale('en'), child: const UserListApp()),
  );
}
