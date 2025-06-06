import 'dart:async';

import '../../../auth/domain/user.dart';
import '../../../auth/infrastructure/repos/auth_repo.dart';
import '../../../auth/presentation/providers/auth_state_provider.dart';
import '../../../auth/presentation/providers/sign_out_provider.dart';
import '../../../core/presentation/utils/riverpod_framework.dart';

part 'check_auth_provider.g.dart';

@riverpod
class CheckAuth extends _$CheckAuth {
  @override
  Future<User> build() async {
    final sub = ref.listen(authStateProvider.notifier, (prev, next) {});

    listenSelf((previous, next) {
      next.whenOrNull(
        data: (user) => sub.read().authenticateUser(user),
        error: (err, st) => ref.read(signOutStateProvider.notifier).signOut(),
      );
    });

    final uid = await ref.watch(authRepoProvider).getUserAuthUid();
    return ref.watch(authRepoProvider).getUserData(uid);
  }
}
