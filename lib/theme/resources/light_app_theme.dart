part of app_theme;

@lazySingleton
class LightAppTheme implements AppTheme {
  const LightAppTheme();

  @override
  Color get transparentColor => _AppColors.transparent;

  @override
  Color get primaryColor => _AppColors.primary;

  @override
  // TODO: implement scaffoldBackgroundColor
  Color get scaffoldBackgroundColor => _AppColors.lightBackgroud;

  @override
  Color get border => _AppColors.borderLight;

  @override
  Color get gradient => _AppColors.bluelight;

  @override
  // TODO: implement error
  Color get error => _AppColors.red;
}
