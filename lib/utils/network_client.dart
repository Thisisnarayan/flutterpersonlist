import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@lazySingleton
class NetworkClients {
  late final Dio client;

  NetworkClients() {
    const baseUrl = 'https://fakerapi.it/api/v1/';
    client = Dio(
      BaseOptions(
        baseUrl: baseUrl,
      ),
    );
  }
}
