import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:flutterpersonlist/theme/stores/theme_settings_store.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  preferRelativeImports: false,
)
void setup() => getIt.init();
