import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../presentation/extensions/cache_exception_message.dart';
import '../../presentation/extensions/server_exception_message.dart';
import '../../presentation/helpers/localization_helper.dart';

part 'app_exception.freezed.dart';
part 'server_exception_type.dart';
part 'cache_exception_type.dart';

@freezed
abstract class AppException with _$AppException implements Exception {
  const factory AppException.serverException({
    required ServerExceptionType type,
    required String message,
    int? code,
  }) = ServerException;

  const factory AppException.cacheException({
    required CacheExceptionType type,
    required String message,
    int? code,
  }) = CacheException;
}

extension AppErrorExtension on Object {
  String errorMessage(BuildContext context) {
    final error = this;
    if (error is ServerException) {
      return error.serverErrorMessage(context);
    } else if (error is CacheException) {
      return error.cacheErrorMessage(context);
    }
    return tr(context).unknownError;
  }
}
