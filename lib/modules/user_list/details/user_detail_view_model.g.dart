// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_detail_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserDetailViewModel on _UserDetailViewModel, Store {
  late final _$userDataAtom =
      Atom(name: '_UserDetailViewModel.userData', context: context);

  @override
  UserListItem? get userData {
    _$userDataAtom.reportRead();
    return super.userData;
  }

  @override
  set userData(UserListItem? value) {
    _$userDataAtom.reportWrite(value, super.userData, () {
      super.userData = value;
    });
  }

  @override
  String toString() {
    return '''
userData: ${userData}
    ''';
  }
}
