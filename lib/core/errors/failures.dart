import 'package:dio/dio.dart';

abstract class Failure {
  final String errmsg;
  const Failure(this.errmsg);
}

class ServerFailure extends Failure {
  ServerFailure(super.errmsg);
  factory ServerFailure.fromDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.cancel:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.connectionError:
        return ServerFailure('Receive timeout with ApiServer');
      case DioExceptionType.unknown:
        return ServerFailure('Receive timeout with ApiServer');
    }
  }
}
