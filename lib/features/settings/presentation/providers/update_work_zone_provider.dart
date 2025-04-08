import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/presentation/utils/fp_framework.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../profile/infrastructure/repos/profile_repo.dart';
import '../../domain/work_zone.dart';

part 'update_work_zone_provider.g.dart';

@riverpod
class UpdateWorkZoneState extends _$UpdateWorkZoneState {
  @override
  FutureOr<Option<void>> build() => const None();

  Future<void> updateWorkZone({
    required LatLng center,
    required double radiusKm,
  }) async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(() async {
      final profileRepo = ref.read(profileRepoProvider);

      // ✅ Construct WorkZone from center + radius
      final workZone = WorkZone.fromLatLng(center: center, radiusKm: radiusKm);

      await profileRepo.updateWorkZone(workZone);

      ref.invalidate(hasWorkZoneProvider);

      return const Some(null);
    });
  }

  Future<WorkZone?> loadWorkZone() async {
    final profileRepo = ref.read(profileRepoProvider);
    return profileRepo.getWorkZone();
  }
}

@riverpod
Future<bool> hasWorkZone(Ref ref) async {
  final profileRepo = ref.read(profileRepoProvider);
  final workZone = await profileRepo.getWorkZone();
  return workZone != null;
}
