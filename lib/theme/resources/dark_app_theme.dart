part of app_theme;

@lazySingleton
class DarkAppTheme implements AppTheme {
  const DarkAppTheme();

  @override
  Color get transparentColor => _AppColors.transparent;

  @override
  // TODO: implement primaryColor
  Color get primaryColor => _AppColors.primary;

  @override
  // TODO: implement scaffoldBackgroundColor
  Color get scaffoldBackgroundColor => _AppColors.darkBackgroud;

  @override
  Color get border => _AppColors.borderDark;

  @override
  Color get gradient => _AppColors.blue;

  @override
  // TODO: implement error
  Color get error => _AppColors.red;
}
