import 'package:flutter/cupertino.dart';

import '../../infrastructure/error/app_exception.dart';

extension ServerExceptionMessage on ServerException {
  String serverErrorMessage(BuildContext context) {
    switch (type) {
      case ServerExceptionType.general:
        return 'Something went wrong';
      case ServerExceptionType.unauthorized:
        return 'Unauthorized request';
      case ServerExceptionType.forbidden:
        return 'Access forbidden';
      case ServerExceptionType.notFound:
        return 'Resource not found';
      case ServerExceptionType.conflict:
        return 'Conflict occurred';
      case ServerExceptionType.internal:
        return 'Internal server error';
      case ServerExceptionType.serviceUnavailable:
        return 'Service is currently unavailable';
      case ServerExceptionType.timeOut:
        return 'Request timed out';
      case ServerExceptionType.noInternet:
        return 'No internet connection';
      case ServerExceptionType.unknown:
        return 'Unknown server error';

      // Firebase Auth Errors
      case ServerExceptionType.authInvalidEmail:
        return 'Invalid email address';
      case ServerExceptionType.authWrongPassword:
        return 'Wrong password';
      case ServerExceptionType.authUserNotFound:
        return 'User not found';
      case ServerExceptionType.authUserDisabled:
        return 'User account is disabled';
    }
  }
}
