import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../infrastructure/dtos/work_zone_dto.dart';

part 'work_zone.freezed.dart';
part 'work_zone.g.dart';

@freezed
abstract class WorkZone with _$WorkZone {
  const factory WorkZone({
    required double latitude,
    required double longitude,
    required double radiusKm,
  }) = _WorkZone;

  factory WorkZone.fromLatLng({
    required LatLng center,
    required double radiusKm,
  }) =>
      WorkZone(
        latitude: center.latitude,
        longitude: center.longitude,
        radiusKm: radiusKm,
      );

  factory WorkZone.fromDto(WorkZoneDto dto) => WorkZone(
        latitude: dto.latitude,
        longitude: dto.longitude,
        radiusKm: dto.radiusKm,
      );

  factory WorkZone.fromJson(Map<String, dynamic> json) =>
      _$WorkZoneFromJson(json);
}
