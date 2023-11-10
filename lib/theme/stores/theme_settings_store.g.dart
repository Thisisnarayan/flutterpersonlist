// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_settings_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ThemeSettingsStore on _ThemeSettingsStore, Store {
  Computed<ThemeMode>? _$themeModeComputed;

  @override
  ThemeMode get themeMode =>
      (_$themeModeComputed ??= Computed<ThemeMode>(() => super.themeMode,
              name: '_ThemeSettingsStore.themeMode'))
          .value;

  late final _$_themeModeAtom =
      Atom(name: '_ThemeSettingsStore._themeMode', context: context);

  @override
  ThemeMode? get _themeMode {
    _$_themeModeAtom.reportRead();
    return super._themeMode;
  }

  @override
  set _themeMode(ThemeMode? value) {
    _$_themeModeAtom.reportWrite(value, super._themeMode, () {
      super._themeMode = value;
    });
  }

  late final _$_ThemeSettingsStoreActionController =
      ActionController(name: '_ThemeSettingsStore', context: context);

  @override
  void setThemeMode(ThemeMode mode) {
    final _$actionInfo = _$_ThemeSettingsStoreActionController.startAction(
        name: '_ThemeSettingsStore.setThemeMode');
    try {
      return super.setThemeMode(mode);
    } finally {
      _$_ThemeSettingsStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
themeMode: ${themeMode}
    ''';
  }
}
