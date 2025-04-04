import 'package:flutter/material.dart';

import '../../infrastructure/error/app_exception.dart';
import '../../presentation/extensions/cache_exception_message.dart';
import '../../presentation/extensions/server_exception_message.dart';
import '../helpers/localization_helper.dart';

extension AppErrorExtension on Object {
  String errorMessage(BuildContext context) {
    final error = this;

    // Handle ServerException explicitly
    if (error is ServerException) {
      return ServerExceptionMessage(error).serverErrorMessage(context);
    }
    // Handle CacheException explicitly
    else if (error is CacheException) {
      return CacheExceptionMessage(error).cacheErrorMessage(context);
    }

    // Default case: Unknown error
    return tr(context).unknownError;
  }
}
