import 'package:dio/dio.dart';
import 'package:flutterpersonlist/modules/user_list/model/api_exception.dart';

extension ExceptionEx on Object {
  Exception toException() {
    if (this is DioException) {
      final ex = this as DioException;
      return APIException(
        statusCode: ex.response?.statusCode,
      );
    } else {
      return Exception(toString());
    }
  }
}
