import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';

enum LocationError {
  notEnabledLocation,
  notGrantedLocationPermission,
  getLocationTimeout;

  const LocationError();

  String getErrorText(BuildContext context) {
    return switch (this) {
      LocationError.notEnabledLocation =>
        S.of(context).please_enable_location_service,
      LocationError.notGrantedLocationPermission =>
        S.of(context).location_permission_required,
      LocationError.getLocationTimeout => S.of(context).location_timeout_error,
    };
  }
}
