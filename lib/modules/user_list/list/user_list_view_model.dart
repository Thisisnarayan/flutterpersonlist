import 'dart:ui';

import 'package:flutterpersonlist/modules/user_list/apis/user_apis.dart';
import 'package:flutterpersonlist/modules/user_list/model/user.dart';
import 'package:flutterpersonlist/theme/resources/app_theme.dart';
import 'package:mobx/mobx.dart';

part 'user_list_view_model.g.dart';

class UserListViewModel = _UserListViewModel with _$UserListViewModel;

abstract class _UserListViewModel with Store {
  final _apiRepo = getIt.get<UserApis>();

  _UserListViewModel({required this.data}) {
    // getPersonalDetails();
    print(data!.data);
    if (data != null && data!.data != null) {
      list?.addAll(data!.data!);
    }
  }

  @observable
  UserListFromApi? data;

  @observable
  ObservableList<UserListItem>? list = ObservableList<UserListItem>.of([]);

  @observable
  bool noMoreData = false;

  @observable
  bool isLoading = false;

  //first page alredy loaded
  @observable
  int pageNumber = 2;

  @observable
  VoidCallback? viewLast;

  @observable
  double? scrollPosition;

  @action
  setScrollPostion(double position) {
    scrollPosition = position;
  }

  @action
  clearList() {
    list?.clear();
    pageNumber = 1;
    noMoreData = false;
  }

  @action
  setNoMoreData() {
    noMoreData = true;
  }

  @action
  loaddata() async {
    print('load more data');

    if (isLoading || (pageNumber > 4)) return;

    isLoading = true;

    var result = await _apiRepo.fetchUserList();
    await result.when(
        success: (response) async {
          list?.addAll(response.data as Iterable<UserListItem>);
          pageNumber++;

          // viewLast?.call();
          isLoading = false;
        },
        failure: (ex) {});
  }
}
