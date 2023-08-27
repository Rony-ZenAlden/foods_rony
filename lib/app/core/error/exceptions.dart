
import 'package:foods_rony/app/core/values/app_strings.dart';
import 'package:get/get.dart';

class ServerException implements Exception {
  final dynamic message;

  ServerException({
    this.message,
  });

  @override
  String toString() {
    Object? message = this.message;
    if (message == null) return AppStrings.serverException;
    return message.toString();
  }
}

class LocalException implements Exception {
  final dynamic message;

  LocalException({
    this.message,
  });

  @override
  String toString() {
    Object? message = this.message;
    if (message == null) return AppStrings.localException;
    return message.toString();
  }
}
