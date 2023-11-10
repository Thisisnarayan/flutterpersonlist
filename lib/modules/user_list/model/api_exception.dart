class APIException implements Exception {
  final int? statusCode;

  const APIException({
    required this.statusCode,
  });

  @override
  String toString() {
    return '''
    ::API Failure
    Status Code => $statusCode
    ''';
  }
}
