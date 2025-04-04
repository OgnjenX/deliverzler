import 'package:flutter/cupertino.dart';

import '../../infrastructure/error/app_exception.dart';

extension CacheExceptionMessage on CacheException {
  String cacheErrorMessage(BuildContext context) {
    switch (type) {
      case CacheExceptionType.unknown:
        return 'An unknown cache error occurred';
      case CacheExceptionType.general:
        return 'A general cache error occurred';
      case CacheExceptionType.notFound:
        return 'Cache not found';
      case CacheExceptionType.expired:
        return 'Cached data has expired';
    }
  }
}
