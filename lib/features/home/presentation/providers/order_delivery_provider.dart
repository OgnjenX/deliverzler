import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/infrastructure/services/location_service.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../profile/presentation/providers/deliverer_availability_provider.dart';
import '../../domain/order.dart';
import '../../domain/update_delivery_status.dart';
import '../../domain/value_objects.dart';
import '../../infrastructure/repos/orders_repo.dart';
import '../utils/delivery_progress_tracker.dart';

part 'order_delivery_provider.g.dart';

// Provider to manage order delivery process
@riverpod
class OrderDeliveryNotifier extends _$OrderDeliveryNotifier {
  @override
  Future<void> build() async {
    // Initialize with no state
    return;
  }

  // Accept an order and start the delivery process
  Future<void> acceptOrder(AppOrder order) async {
    state = const AsyncLoading();

    try {
      // Get current location
      final currentLocation = await _getCurrentLocation();

      if (currentLocation == null) {
        throw Exception(
          'Current location not available. Please enable location services and try again.',
        );
      }

      // Get delivery location from the order
      final deliveryLocation = _getDeliveryLocation(order);

      if (deliveryLocation == null) {
        throw Exception('Delivery location not available');
      }

      // Update order status to onTheWay
      await ref.read(ordersRepoProvider).updateDeliveryStatus(
            UpdateDeliveryStatus(
              orderId: order.id,
              deliveryStatus: DeliveryStatus.onTheWay,
            ),
          );

      // Start tracking delivery progress for continuous ETA updates
      // This will also calculate the initial ETA and update the deliverer status
      await ref.read(deliveryProgressTrackerProvider).startTracking(
            order,
            currentLocation,
          );

      state = const AsyncData(null);
    } catch (e) {
      if (kDebugMode) {
        print('Error accepting order: $e');
      }
      state = AsyncError(e, StackTrace.current);
    }
  }

  // Complete an order delivery
  Future<void> completeDelivery(AppOrder order) async {
    state = const AsyncLoading();

    try {
      // Stop tracking delivery progress
      ref.read(deliveryProgressTrackerProvider).stopTracking();

      // Update order status to delivered
      await ref.read(ordersRepoProvider).updateDeliveryStatus(
            UpdateDeliveryStatus(
              orderId: order.id,
              deliveryStatus: DeliveryStatus.delivered,
            ),
          );

      // Update deliverer status to available
      await ref
          .read(delivererAvailabilityNotifierProvider.notifier)
          .completeDelivery();

      state = const AsyncData(null);
    } catch (e) {
      if (kDebugMode) {
        print('Error completing delivery: $e');
      }
      state = AsyncError(e, StackTrace.current);
    }
  }

  // Get current location using the LocationService
  Future<LatLng?> _getCurrentLocation() async {
    try {
      // Get the location service from the provider
      final locationService = ref.read(locationServiceProvider);

      // Get the current position
      final position = await locationService.getLocation();

      if (position != null) {
        // Return the location as LatLng
        return LatLng(position.latitude, position.longitude);
      } else {
        if (kDebugMode) {
          print('Could not get current location');
        }
        return null;
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error getting current location: $e');
      }
      return null;
    }
  }

  // Extract delivery location from order
  LatLng? _getDeliveryLocation(AppOrder order) {
    if (order.address?.geoPoint != null) {
      final geoPoint = order.address!.geoPoint!;
      return LatLng(geoPoint.latitude, geoPoint.longitude);
    }
    return null;
  }
}
