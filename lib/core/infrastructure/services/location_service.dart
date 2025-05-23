// ignore_for_file: depend_on_referenced_packages, implementation_imports, unnecessary_import

import 'dart:io';

import 'package:geolocator/geolocator.dart';
import 'package:geolocator_android/src/types/foreground_settings.dart';
import 'package:location/location.dart' as loc;
import 'package:logging/logging.dart';

import '../../presentation/utils/riverpod_framework.dart';

part 'location_service.g.dart';

abstract class AppLocationSettings {
  static const int getLocationTimeLimit = 20; //in seconds
  static const int locationChangeInterval = 5; //in seconds
  static const int locationChangeDistance = 50; //in meters
}

@Riverpod(keepAlive: true)
LocationService locationService(Ref ref) {
  return LocationService();
}

class LocationService {
  Future<bool> isLocationServiceEnabled() async {
    return Geolocator.isLocationServiceEnabled();
  }

  Future<bool> isWhileInUsePermissionGranted() async {
    final permission = await Geolocator.checkPermission();
    return [LocationPermission.whileInUse, LocationPermission.always]
        .any((p) => p == permission);
  }

  Future<bool> isAlwaysPermissionGranted() async {
    return await Geolocator.checkPermission() == LocationPermission.always;
  }

  Future<bool> enableLocationService() async {
    final serviceEnabled = await isLocationServiceEnabled();
    if (serviceEnabled) {
      return true;
    } else {
      return loc.Location().requestService();
    }
  }

  Future<bool> requestWhileInUsePermission() async {
    if (await isWhileInUsePermissionGranted()) {
      return true;
    } else {
      final permissionGranted = await Geolocator.requestPermission();
      return permissionGranted == LocationPermission.whileInUse;
    }
  }

  Future<bool> requestAlwaysPermission() async {
    if (await isAlwaysPermissionGranted()) {
      return true;
    } else {
      await Geolocator.requestPermission();
      return isAlwaysPermissionGranted();
    }
  }

  LocationSettings getLocationSettings({
    LocationAccuracy? accuracy,
    int? interval,
    int? distanceFilter,
  }) {
    if (Platform.isAndroid) {
      return AndroidSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter:
            distanceFilter ?? AppLocationSettings.locationChangeDistance,
        intervalDuration: Duration(
          seconds: interval ?? AppLocationSettings.locationChangeInterval,
        ),
        //Set foreground notification config to keep app alive in background
        foregroundNotificationConfig: const ForegroundNotificationConfig(
          notificationTitle: 'Deliverzler Delivery Service',
          notificationText:
              'Deliverzler will receive your location in background.',
          notificationIcon: AndroidResource(name: 'notification_icon'),
          enableWakeLock: true,
        ),
      );
    } else if (Platform.isIOS || Platform.isMacOS) {
      return AppleSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter:
            distanceFilter ?? AppLocationSettings.locationChangeDistance,
        activityType: ActivityType.automotiveNavigation,
        pauseLocationUpdatesAutomatically: true,
        //Set to true to keep app alive in background
        showBackgroundLocationIndicator: true,
      );
    } else {
      return LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter:
            distanceFilter ?? AppLocationSettings.locationChangeDistance,
      );
    }
  }

  Future<Position?> getLocation() async {
    try {
      // Define the location settings for both Android and iOS
      const locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        timeLimit: Duration(seconds: AppLocationSettings.getLocationTimeLimit),
      );

      // Get the current position using the updated LocationSettings
      return await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );
    } catch (e) {
      Logger.root.severe(e, StackTrace.current);
      return null;
    }
  }
}
