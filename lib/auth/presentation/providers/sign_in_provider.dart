import 'dart:async';

import 'package:flutter/foundation.dart';

import '../../../core/infrastructure/notification/notification_service.dart';
import '../../../core/presentation/utils/fp_framework.dart';
import '../../../core/presentation/utils/riverpod_framework.dart';
import '../../domain/sign_in_with_email.dart';
import '../../domain/user.dart';
import '../../infrastructure/repos/auth_repo.dart';
import 'auth_state_provider.dart';

part 'sign_in_provider.g.dart';

//Using [Option] to indicate idle(none)/success(some) states.
//This is a shorthand. You can use custom states using [freezed] instead.
@riverpod
class SignInState extends _$SignInState {
  @override
  FutureOr<Option<User>> build() => const None();

  Future<void> signIn(SignInWithEmail params) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final authRepo = ref.read(authRepoProvider);
      final userFromCredential = await authRepo.signInWithEmail(params);
      final user = await authRepo.getUserData(userFromCredential.id);

      // Make topic subscription non-blocking and handle errors
      unawaited(
        ref.read(notificationServiceProvider)
            .subscribeToTopic('general')
            .catchError((Object e) {
          // Log the error but don't fail the sign-in process
          if (kDebugMode) {
            print('Failed to subscribe to topic: $e');
          }
          return null;
        }),
      );

      ref.read(authStateProvider.notifier).authenticateUser(user);

      return Some(user);
    });
  }
}
