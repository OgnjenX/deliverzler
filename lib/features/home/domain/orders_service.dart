import 'package:flutter/foundation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../constants.dart';
import '../../../core/presentation/utils/riverpod_framework.dart';
import '../presentation/providers/update_delivery_status_provider/update_delivery_status_provider.dart';
import '../presentation/utils/delivery_time_estimator.dart';
import 'order.dart';
import 'value_objects.dart';

part 'orders_service.g.dart';

@Riverpod(keepAlive: true)
OrdersService ordersService(Ref ref) {
  return OrdersService(
    ref: ref,
  );
}

class OrdersService {
  OrdersService({required this.ref});

  final Ref ref;

  ({bool canProceed, bool isLoading}) orderAuthority({
    required String userId,
    required String? orderDeliveryId,
  }) {
    final canProceed = userId == orderDeliveryId;
    final isLoading =
        ref.read(updateDeliveryStatusControllerProvider).isLoading;
    return (canProceed: canProceed, isLoading: isLoading);
  }

  /// Determines if an order is ready for delivery based on time window calculations
  /// Returns true if the order should be available for delivery at the current time
  Future<bool> isReadyForDelivery(
    AppOrder order, {
    LatLng? delivererLocation,
  }) async {
    // If delivery time restrictions are disabled, always return true
    if (!AppConstants.enforceDeliveryTimeRestrictions) {
      return true;
    }

    // If order is not in upcoming status, it's not ready for delivery
    if (order.deliveryStatus != DeliveryStatus.upcoming) {
      return false;
    }
    
    // If order is marked as ASAP, it's ready for delivery immediately
    if (order.isAsap) {
      return true;
    }

    // Get current time in milliseconds since epoch
    final now = DateTime.now().millisecondsSinceEpoch;

    // Calculate estimated travel time (in milliseconds)
    var estimatedTravelTimeMs = 0;
    try {
      // If we have the deliverer's location, calculate estimated travel time
      if (delivererLocation != null && order.deliveryGeoPoint != null) {
        final estimator = DeliveryTimeEstimator(ref);
        final estimatedTime = await estimator.calculateEstimatedDeliveryTime(
          origin: delivererLocation,
          destination: LatLng(
            order.deliveryGeoPoint!.latitude,
            order.deliveryGeoPoint!.longitude,
          ),
          additionalMinutes:
              0, // No additional time as we just want travel time
        );

        // Calculate milliseconds difference between now and estimated time
        estimatedTravelTimeMs = estimatedTime.millisecondsSinceEpoch -
            DateTime.now().millisecondsSinceEpoch;

        // Ensure we have a positive value
        if (estimatedTravelTimeMs < 0) {
          estimatedTravelTimeMs = 0;
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error calculating estimated delivery time: $e');
      }
    }

    // Get order delivery time (stored as epoch milliseconds)
    final orderDeliveryTime = order.deliveryDateTime;

    // Define buffer times (in milliseconds)
    const bufferTimeBeforeMs =
        AppConstants.deliveryTimeBufferBeforeMinutes * 60 * 1000;
    const bufferTimeAfterMs =
        AppConstants.deliveryTimeBufferAfterMinutes * 60 * 1000;

    // Calculate the earliest time we should show the deliver button
    // (Order delivery time - estimated travel time - buffer time)
    final earliestDeliveryTime =
        orderDeliveryTime - estimatedTravelTimeMs - bufferTimeBeforeMs;

    // For debugging purposes
    if (kDebugMode) {
      final now = DateTime.now();
      final earliest =
          DateTime.fromMillisecondsSinceEpoch(earliestDeliveryTime);
      final orderTime = DateTime.fromMillisecondsSinceEpoch(orderDeliveryTime);
      print('Order: ${order.id}');
      print('Current time: $now');
      print('Order delivery time: $orderTime');
      print('Earliest delivery time: $earliest');
      print('Is ASAP order: ${order.isAsap}');
    }

    // Check if current time is after the earliest delivery time
    final isAfterEarliestTime = now >= earliestDeliveryTime;

    // Calculate the latest time we should show the deliver button
    // (Order delivery time + buffer time after)
    final latestDeliveryTime = orderDeliveryTime + bufferTimeAfterMs;

    // Check if current time is before the latest delivery time (only if enforceUpperTimeLimit is true)
    final isBeforeLatestTime =
        !AppConstants.enforceUpperTimeLimit || now <= latestDeliveryTime;

    // Order is ready for delivery if it's within the valid time window
    return isAfterEarliestTime && isBeforeLatestTime;
  }
}
