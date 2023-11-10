import 'package:flutterpersonlist/modules/user_list/model/user.dart';
import 'package:mobx/mobx.dart';
part 'user_detail_view_model.g.dart';

class UserDetailViewModel = _UserDetailViewModel with _$UserDetailViewModel;

abstract class _UserDetailViewModel with Store {
  _UserDetailViewModel({required this.userData});

  @observable
  UserListItem? userData;
}
