import 'package:dio/dio.dart';
import 'package:flutterpersonlist/di/di.dart';
import 'package:flutterpersonlist/extensions/exception_extension.dart';
import 'package:flutterpersonlist/modules/user_list/model/result.dart';
import 'package:flutterpersonlist/modules/user_list/model/user.dart';
import 'package:flutterpersonlist/utils/network_client.dart';
import 'package:injectable/injectable.dart';

@injectable
@lazySingleton
class UserApis {
  Dio get _client => getIt.get<NetworkClients>().client;

  Future<Result<Exception, UserListFromApi>> fetchUserList() async {
    try {
      final response = await _client.get(
        'persons?_quantity=10',
      );

      return Result.success(UserListFromApi.fromJson(response.data));
    } catch (err) {
      return Result.failure(err.toException());
    }
  }
}
