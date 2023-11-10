// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_view_modal.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SplashViewModel on _SplashViewModel, Store {
  Computed<bool>? _$showNextScreenComputed;

  @override
  bool get showNextScreen =>
      (_$showNextScreenComputed ??= Computed<bool>(() => super.showNextScreen,
              name: '_SplashViewModel.showNextScreen'))
          .value;

  late final _$nextRouteAtom =
      Atom(name: '_SplashViewModel.nextRoute', context: context);

  @override
  bool get nextRoute {
    _$nextRouteAtom.reportRead();
    return super.nextRoute;
  }

  @override
  set nextRoute(bool value) {
    _$nextRouteAtom.reportWrite(value, super.nextRoute, () {
      super.nextRoute = value;
    });
  }

  late final _$userListFromApiAtom =
      Atom(name: '_SplashViewModel.userListFromApi', context: context);

  @override
  UserListFromApi? get userListFromApi {
    _$userListFromApiAtom.reportRead();
    return super.userListFromApi;
  }

  @override
  set userListFromApi(UserListFromApi? value) {
    _$userListFromApiAtom.reportWrite(value, super.userListFromApi, () {
      super.userListFromApi = value;
    });
  }

  late final _$hasCompletedAtom =
      Atom(name: '_SplashViewModel.hasCompleted', context: context);

  @override
  bool get hasCompleted {
    _$hasCompletedAtom.reportRead();
    return super.hasCompleted;
  }

  @override
  set hasCompleted(bool value) {
    _$hasCompletedAtom.reportWrite(value, super.hasCompleted, () {
      super.hasCompleted = value;
    });
  }

  late final _$callUserListAsyncAction =
      AsyncAction('_SplashViewModel.callUserList', context: context);

  @override
  Future<void> callUserList() {
    return _$callUserListAsyncAction.run(() => super.callUserList());
  }

  @override
  String toString() {
    return '''
nextRoute: ${nextRoute},
userListFromApi: ${userListFromApi},
hasCompleted: ${hasCompleted},
showNextScreen: ${showNextScreen}
    ''';
  }
}
