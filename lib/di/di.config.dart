// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutterpersonlist/modules/user_list/apis/user_apis.dart' as _i6;
import 'package:flutterpersonlist/theme/resources/app_theme.dart' as _i3;
import 'package:flutterpersonlist/theme/stores/theme_settings_store.dart'
    as _i5;
import 'package:flutterpersonlist/utils/network_client.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.DarkAppTheme>(() => const _i3.DarkAppTheme());
    gh.lazySingleton<_i3.LightAppTheme>(() => const _i3.LightAppTheme());
    gh.lazySingleton<_i4.NetworkClients>(() => _i4.NetworkClients());
    gh.factory<_i5.ThemeSettingsStore>(() => _i5.ThemeSettingsStore());
    gh.factory<_i6.UserApis>(() => _i6.UserApis());
    return this;
  }
}
