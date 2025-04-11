import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geoflutterfire_plus/geoflutterfire_plus.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../core/domain/json_converters/geo_fire_point_converter.dart';
import '../infrastructure/dtos/work_zone_dto.dart';

part 'work_zone.freezed.dart';
part 'work_zone.g.dart';

@freezed
abstract class WorkZone with _$WorkZone {
  const factory WorkZone({
    @GeoFirePointConverter() required GeoFirePoint center,
    required double radiusKm,
  }) = _WorkZone;

  factory WorkZone.fromLatLng({
    required LatLng center,
    required double radiusKm,
  }) {
    return WorkZone(
      center: GeoFirePoint(GeoPoint(center.latitude, center.longitude)),
      radiusKm: radiusKm,
    );
  }

  factory WorkZone.fromDto(WorkZoneDto dto) {
    final geoPoint = dto.center['geopoint'] as GeoPoint;
    return WorkZone(
      center: GeoFirePoint(geoPoint),
      radiusKm: dto.radiusKm,
    );
  }

  factory WorkZone.fromJson(Map<String, dynamic> json) =>
      _$WorkZoneFromJson(json);
}
