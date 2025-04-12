import 'package:flutter/foundation.dart';

import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../home/domain/value_objects.dart';
import '../../infrastructure/data_sources/profile_remote_data_source.dart';

part 'deliverer_availability_provider.g.dart';

// Provider to track and manage deliverer availability
@riverpod
class DelivererAvailabilityNotifier extends _$DelivererAvailabilityNotifier {
  @override
  Future<Map<String, dynamic>> build() async {
    // Load initial availability status from Firebase
    return _loadAvailabilityStatus();
  }

  // Get the current status
  DelivererStatus get currentStatus =>
      state.valueOrNull?['status'] as DelivererStatus? ??
      DelivererStatus.available;

  // Get the estimated completion time
  DateTime? get estimatedCompletionTime =>
      state.valueOrNull?['estimatedCompletionTime'] as DateTime?;

  // Check if the deliverer is currently available
  bool get isAvailable => currentStatus == DelivererStatus.available;

  // Update the deliverer's status
  Future<void> updateStatus(DelivererStatus newStatus) async {
    try {
      await ref
          .read(profileRemoteDataSourceProvider)
          .updateDelivererStatus(newStatus);

      // Update the local state
      state = AsyncData({
        'status': newStatus,
        'estimatedCompletionTime': estimatedCompletionTime,
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error updating deliverer status: $e');
      }
      state = AsyncError(e, StackTrace.current);
    }
  }

  // Update the estimated completion time
  Future<void> updateEstimatedCompletionTime(DateTime? completionTime) async {
    try {
      await ref
          .read(profileRemoteDataSourceProvider)
          .updateEstimatedCompletionTime(completionTime);

      // Update the local state
      state = AsyncData({
        'status': currentStatus,
        'estimatedCompletionTime': completionTime,
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error updating estimated completion time: $e');
      }
      state = AsyncError(e, StackTrace.current);
    }
  }

  // Update both status and estimated completion time
  Future<void> updateAvailability({
    required DelivererStatus status,
    DateTime? estimatedCompletionTime,
  }) async {
    try {
      await ref
          .read(profileRemoteDataSourceProvider)
          .updateDelivererAvailability(
            status: status,
            estimatedCompletionTime: estimatedCompletionTime,
          );

      // Update the local state
      state = AsyncData({
        'status': status,
        'estimatedCompletionTime': estimatedCompletionTime,
      });
    } catch (e) {
      if (kDebugMode) {
        print('Error updating deliverer availability: $e');
      }
      state = AsyncError(e, StackTrace.current);
    }
  }

  // Mark the deliverer as on delivery with an estimated completion time
  Future<void> startDelivery(DateTime estimatedCompletionTime) async {
    await updateAvailability(
      status: DelivererStatus.onDelivery,
      estimatedCompletionTime: estimatedCompletionTime,
    );
  }

  // Mark the deliverer as available after completing a delivery
  Future<void> completeDelivery() async {
    await updateAvailability(
      status: DelivererStatus.available,
    );
  }

  // Set the deliverer as offline (not working)
  Future<void> goOffline() async {
    await updateStatus(DelivererStatus.offline);
  }

  // Set the deliverer as available (working and ready for orders)
  Future<void> goOnline() async {
    await updateStatus(DelivererStatus.available);
  }

  // Load the current availability status from Firebase
  Future<Map<String, dynamic>> _loadAvailabilityStatus() async {
    try {
      return await ref
          .read(profileRemoteDataSourceProvider)
          .getDelivererAvailability();
    } catch (e) {
      if (kDebugMode) {
        print('Error loading deliverer availability: $e');
      }
      rethrow;
    }
  }

  // Refresh the availability status from Firebase
  Future<void> refreshAvailabilityStatus() async {
    state = const AsyncLoading();
    state = AsyncData(await _loadAvailabilityStatus());
  }
}
