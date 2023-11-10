import 'package:flutterpersonlist/di/di.dart';
import 'package:flutterpersonlist/modules/user_list/apis/user_apis.dart';
import 'package:flutterpersonlist/modules/user_list/model/user.dart';
import 'package:flutterpersonlist/theme/stores/theme_settings_store.dart';
import 'package:mobx/mobx.dart';

part 'splash_view_modal.g.dart';

class SplashViewModel = _SplashViewModel with _$SplashViewModel;

abstract class _SplashViewModel with Store {
  final _apiRepo = getIt.get<UserApis>();

  @observable
  bool nextRoute = false;

  @observable
  UserListFromApi? userListFromApi;

  @observable
  bool hasCompleted = false;

  @computed
  bool get showNextScreen => hasCompleted && nextRoute == true;

  @action
  Future<void> callUserList() async {
    var result = await _apiRepo.fetchUserList();
    await result.when(
        success: (response) async {
          userListFromApi = response;
          nextRoute = true;
          hasCompleted = true;
        },
        failure: (ex) {});
  }
}
