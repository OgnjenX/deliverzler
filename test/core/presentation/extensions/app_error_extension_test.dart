import 'package:deliverzler/core/infrastructure/error/app_exception.dart';
import 'package:deliverzler/core/presentation/extensions/cache_exception_message.dart';
import 'package:deliverzler/core/presentation/extensions/server_exception_message.dart';
import 'package:deliverzler/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../utils.dart';

void main() {
  group('message', () {
    const tMessage = 'tMessage';

    testWidgets(
      'should return same error message '
      'when AppException is CacheException and type is CacheExceptionType.general',
      (WidgetTester tester) async {
        // GIVEN
        final context = await setUpLocalizationsContext(tester);
        const AppException tException = CacheException(
          type: CacheExceptionType.general,
          message: 'error',
        );
        // WHEN
        final result = (tException as CacheException).cacheErrorMessage(
          context,
        ); // Use the specific extension method here
        // THEN
        expect(result, tException.message);
      },
    );

    testWidgets(
      'should return same result of S.of(context).unknownError '
      'when AppException is CacheException and type is CacheExceptionType.unknown',
      (WidgetTester tester) async {
        // GIVEN
        final context = await setUpLocalizationsContext(tester);
        const AppException tException = CacheException(
          type: CacheExceptionType.unknown,
          message: 'error',
        );
        // WHEN
        final result =
            (tException as CacheException).cacheErrorMessage(context);
        // THEN
        expect(result, S.of(context).unknownError);
      },
    );

    void runServerExceptionTest({
      required BuildContext context,
      required ServerExceptionType type,
      required String expectedResult,
    }) {
      // GIVEN
      final AppException tException = ServerException(
        type: type,
        message: tMessage,
      );
      // WHEN
      final result =
          (tException as ServerException).serverErrorMessage(context);
      // THEN
      expect(result, expectedResult);
    }

    testWidgets(
      'should return same message from server '
      'when AppException is ServerException and type is general',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.general,
          expectedResult: tMessage,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).unauthorizedError '
      'when AppException is ServerException and type is unauthorized',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.unauthorized,
          expectedResult: S.of(context).unauthorizedError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).forbiddenError '
      'when AppException is ServerException and type is forbidden',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.forbidden,
          expectedResult: S.of(context).forbiddenError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).notFoundError '
      'when AppException is ServerException and type is notFound',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.notFound,
          expectedResult: S.of(context).notFoundError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).conflictError '
      'when AppException is ServerException and type is conflict',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.conflict,
          expectedResult: S.of(context).conflictError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).internalServerError '
      'when AppException is ServerException and type is internal',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.internal,
          expectedResult: S.of(context).internalError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).serviceUnavailableError '
      'when AppException is ServerException and type is serviceUnavailable',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.serviceUnavailable,
          expectedResult: S.of(context).serviceUnavailableError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).timeoutError '
      'when AppException is ServerException and type is timeOut',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.timeOut,
          expectedResult: S.of(context).timeoutError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).noInternetError '
      'when AppException is ServerException and type is noInternet',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.noInternet,
          expectedResult: S.of(context).noInternetError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).unknownError '
      'when AppException is ServerException and type is unknown',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.unknown,
          expectedResult: S.of(context).unknownError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).authInvalidEmailError '
      'when AppException is ServerException and type is authInvalidEmail',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.authInvalidEmail,
          expectedResult: S.of(context).authInvalidEmailError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).authWrongPasswordError '
      'when AppException is ServerException and type is authWrongPassword',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.authWrongPassword,
          expectedResult: S.of(context).authWrongPasswordError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).authUserNotFoundError '
      'when AppException is ServerException and type is authUserNotFound',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.authUserNotFound,
          expectedResult: S.of(context).authUserNotFoundError,
        );
      },
    );

    testWidgets(
      'should return same result of S.of(context).authUserDisabledError '
      'when AppException is ServerException and type is authUserDisabled',
      (WidgetTester tester) async {
        final context = await setUpLocalizationsContext(tester);
        runServerExceptionTest(
          context: context,
          type: ServerExceptionType.authUserDisabled,
          expectedResult: S.of(context).authUserDisabledError,
        );
      },
    );
  });
}
