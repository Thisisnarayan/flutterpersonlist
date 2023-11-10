// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_list_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserListViewModel on _UserListViewModel, Store {
  late final _$dataAtom =
      Atom(name: '_UserListViewModel.data', context: context);

  @override
  UserListFromApi? get data {
    _$dataAtom.reportRead();
    return super.data;
  }

  @override
  set data(UserListFromApi? value) {
    _$dataAtom.reportWrite(value, super.data, () {
      super.data = value;
    });
  }

  late final _$listAtom =
      Atom(name: '_UserListViewModel.list', context: context);

  @override
  ObservableList<UserListItem>? get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(ObservableList<UserListItem>? value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  late final _$noMoreDataAtom =
      Atom(name: '_UserListViewModel.noMoreData', context: context);

  @override
  bool get noMoreData {
    _$noMoreDataAtom.reportRead();
    return super.noMoreData;
  }

  @override
  set noMoreData(bool value) {
    _$noMoreDataAtom.reportWrite(value, super.noMoreData, () {
      super.noMoreData = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_UserListViewModel.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$pageNumberAtom =
      Atom(name: '_UserListViewModel.pageNumber', context: context);

  @override
  int get pageNumber {
    _$pageNumberAtom.reportRead();
    return super.pageNumber;
  }

  @override
  set pageNumber(int value) {
    _$pageNumberAtom.reportWrite(value, super.pageNumber, () {
      super.pageNumber = value;
    });
  }

  late final _$loaddataAsyncAction =
      AsyncAction('_UserListViewModel.loaddata', context: context);

  @override
  Future loaddata() {
    return _$loaddataAsyncAction.run(() => super.loaddata());
  }

  @override
  String toString() {
    return '''
data: ${data},
list: ${list},
noMoreData: ${noMoreData},
isLoading: ${isLoading},
pageNumber: ${pageNumber}
    ''';
  }
}
