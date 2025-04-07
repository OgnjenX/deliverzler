import 'package:flutter/material.dart';

import '../../../../core/presentation/utils/fp_framework.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../profile/infrastructure/repos/profile_repo.dart';
import '../../domain/work_hours.dart';

part 'update_work_hours_provider.g.dart';

@riverpod
class UpdateWorkHoursState extends _$UpdateWorkHoursState {
  @override
  FutureOr<Option<void>> build() => const None();

  // Update Work Hours function
  Future<void> updateWorkHours({
    required Map<String, bool> selectedDays,
    required Map<String, TimeOfDay?> startTimes,
    required Map<String, TimeOfDay?> endTimes,
    required String timeZone,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final profileRepo = ref.read(profileRepoProvider);
      await profileRepo.updateWorkHours(
        selectedDays,
        startTimes,
        endTimes,
        timeZone,
      );

      return const Some(null);
    });
  }

  Future<WorkHours?> loadWorkHours() async {
    final profileRepo = ref.read(profileRepoProvider);
    return profileRepo.getWorkHours();
  }
}
