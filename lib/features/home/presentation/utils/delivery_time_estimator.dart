import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../map/domain/place_directions.dart';
import '../../../map/infrastructure/repos/map_repo.dart';
import '../../../profile/presentation/providers/deliverer_availability_provider.dart';

// A utility class to estimate delivery times and manage deliverer status
class DeliveryTimeEstimator {
  const DeliveryTimeEstimator(this.ref);

  final Ref ref;

  // Calculate estimated delivery completion time based on route
  Future<DateTime> calculateEstimatedDeliveryTime({
    required LatLng origin,
    required LatLng destination,
    int additionalMinutes = 10, // Extra time for pickup, handover, etc.
  }) async {
    try {
      // Create a cancel token for this request
      final cancelToken = CancelToken();

      // Convert LatLng to the required format for the API
      final originPosition = Position(
        latitude: origin.latitude,
        longitude: origin.longitude,
        timestamp: DateTime.now(),
        accuracy: 0,
        altitude: 0,
        heading: 0,
        speed: 0,
        speedAccuracy: 0,
        altitudeAccuracy: 0,
        headingAccuracy: 0,
      );

      final destinationGeoPoint = GeoPoint(
        destination.latitude,
        destination.longitude,
      );

      // Create the query object
      final query = PlaceDirectionsQuery(
        origin: originPosition,
        destination: destinationGeoPoint,
      );

      // Get directions directly from the map repository
      final directions = await ref.read(mapRepoProvider).getPlaceDirections(
            query,
            cancelToken: cancelToken,
          );

      // Extract duration from directions
      final durationMinutes = _extractDurationMinutes(directions);

      // Add additional time for pickup, handover, etc.
      final totalMinutes = durationMinutes + additionalMinutes;

      // Calculate the estimated completion time
      final now = DateTime.now();
      final estimatedCompletionTime = now.add(Duration(minutes: totalMinutes));

      return estimatedCompletionTime;
    } catch (e) {
      if (kDebugMode) {
        print('Error calculating estimated delivery time: $e');
      }

      // Fallback: use a default duration of 30 minutes
      final now = DateTime.now();
      return now.add(const Duration(minutes: 30));
    }
  }

  // Extract duration in minutes from directions
  int _extractDurationMinutes(PlaceDirections? directions) {
    if (directions == null) {
      return 20; // Default duration if no directions available
    }

    // Extract duration value from directions
    // This assumes the duration is in seconds
    final durationSeconds = directions.durationValue;

    // Convert to minutes
    return (durationSeconds / 60).ceil();
  }

  // Start a delivery and update the deliverer's status
  Future<void> startDelivery({
    required LatLng deliveryLocation,
    required LatLng currentLocation,
  }) async {
    try {
      // Calculate the estimated completion time
      final estimatedCompletionTime = await calculateEstimatedDeliveryTime(
        origin: currentLocation,
        destination: deliveryLocation,
      );

      // Update the deliverer's status to onDelivery with the estimated completion time
      await ref
          .read(delivererAvailabilityNotifierProvider.notifier)
          .startDelivery(estimatedCompletionTime);

      if (kDebugMode) {
        print(
            'Delivery started. Estimated completion: $estimatedCompletionTime',);
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error starting delivery: $e');
      }
    }
  }

  // Complete a delivery and update the deliverer's status
  Future<void> completeDelivery() async {
    try {
      // Update the deliverer's status to available
      await ref
          .read(delivererAvailabilityNotifierProvider.notifier)
          .completeDelivery();

      if (kDebugMode) {
        print('Delivery completed. Deliverer is now available.');
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error completing delivery: $e');
      }
    }
  }
}
