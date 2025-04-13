import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/infrastructure/services/location_service.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../profile/presentation/providers/deliverer_availability_provider.dart';
import '../../domain/order.dart';
import '../../domain/value_objects.dart';
import 'delivery_time_estimator.dart';

part 'delivery_progress_tracker.g.dart';

/// A service that tracks delivery progress and updates estimated completion time
class DeliveryProgressTracker {
  DeliveryProgressTracker(this.ref);

  final Ref ref;
  Timer? _updateTimer;
  LatLng? _destinationLocation;

  // Start tracking a delivery with periodic updates
  Future<void> startTracking(AppOrder order, LatLng currentLocation) async {
    // Extract delivery location from order
    if (order.buyerAddress?.geoPoint != null) {
      final geoPoint = order.buyerAddress!.geoPoint!;
      _destinationLocation = LatLng(geoPoint.latitude, geoPoint.longitude);

      // Calculate initial estimated completion time
      await _calculateAndUpdateInitialETA(currentLocation);

      // Start periodic updates - check every 2 minutes
      _startPeriodicUpdates();
    } else {
      if (kDebugMode) {
        print('Cannot start tracking: delivery location not available');
      }
    }
  }

  // Calculate and update the initial ETA
  Future<void> _calculateAndUpdateInitialETA(LatLng currentLocation) async {
    try {
      if (_destinationLocation == null) {
        return;
      }

      // Calculate initial estimated completion time
      final estimator = DeliveryTimeEstimator(ref);
      final initialEstimatedTime =
          await estimator.calculateEstimatedDeliveryTime(
        origin: currentLocation,
        destination: _destinationLocation!,
      );

      // Update the deliverer's status to onDelivery with the estimated completion time
      await ref
          .read(delivererAvailabilityNotifierProvider.notifier)
          .startDelivery(initialEstimatedTime);

      if (kDebugMode) {
        print(
          'Delivery started. Initial estimated completion: $initialEstimatedTime',
        );
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error calculating initial ETA: $e');
      }
    }
  }

  // Stop tracking when delivery is completed
  void stopTracking() {
    _updateTimer?.cancel();
    _updateTimer = null;
    _destinationLocation = null;
  }

  // Start periodic updates of estimated completion time
  void _startPeriodicUpdates() {
    // Cancel any existing timer
    _updateTimer?.cancel();

    // Create a new timer that fires every 2 minutes
    _updateTimer = Timer.periodic(const Duration(minutes: 2), (_) {
      _updateEstimatedCompletionTime();
    });
  }

  // Update the estimated completion time based on current location
  Future<void> _updateEstimatedCompletionTime() async {
    try {
      if (_destinationLocation == null) {
        return;
      }

      // Check if the deliverer is actually on delivery
      final delivererStatus = ref.read(delivererAvailabilityNotifierProvider.notifier).currentStatus;
      if (delivererStatus != DelivererStatus.onDelivery) {
        if (kDebugMode) {
          print('Not updating ETA: deliverer is not on active delivery');
        }
        // Stop tracking if we're not on delivery but the tracker is still running
        stopTracking();
        return;
      }

      // Get current location
      final locationService = ref.read(locationServiceProvider);
      final position = await locationService.getLocation();

      if (position == null) {
        if (kDebugMode) {
          print('Could not update ETA: current location not available');
        }
        return;
      }

      final currentLocation = LatLng(position.latitude, position.longitude);

      // Calculate new estimated completion time
      final estimator = DeliveryTimeEstimator(ref);
      final newEstimatedTime = await estimator.calculateEstimatedDeliveryTime(
        origin: currentLocation,
        destination: _destinationLocation!,
      );

      // Update the estimated completion time in the provider
      await ref
          .read(delivererAvailabilityNotifierProvider.notifier)
          .updateEstimatedCompletionTime(newEstimatedTime);

      if (kDebugMode) {
        print('Updated estimated completion time: $newEstimatedTime');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error updating estimated completion time: $e');
      }
    }
  }

  // Force an immediate update of the estimated completion time
  Future<void> forceUpdate() async {
    await _updateEstimatedCompletionTime();
  }
}

// Provider for the delivery progress tracker
@riverpod
DeliveryProgressTracker deliveryProgressTracker(Ref ref) {
  return DeliveryProgressTracker(ref);
}
