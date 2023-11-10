import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutterpersonlist/modules/spalsh/splash.dart';
import 'package:flutterpersonlist/routes.dart';
import 'package:flutterpersonlist/theme/resources/app_theme.dart';
import 'package:flutterpersonlist/theme/stores/theme_settings_store.dart';
import 'package:get_it/get_it.dart';

class UserListApp extends StatefulWidget {
  const UserListApp({super.key});

  @override
  State<UserListApp> createState() => _UserListAppState();
}

class _UserListAppState extends State<UserListApp> {
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        //  final themeMode = getIt.get<ThemeSettingsStore>().themeMode;
        final themeMode = GetIt.instance.get<ThemeSettingsStore>().themeMode;
        return MaterialApp(
          title: 'Flutter Demo',
          // theme: ThemeData(
          //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //   useMaterial3: true,
          // ),
          themeMode: themeMode,
          theme: lightMaterialThemeData(),
          darkTheme: darkMaterialThemeData(),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          routes: appRoutes,
          initialRoute: SpashRoute.route,
        );
      },
    );
  }
}
