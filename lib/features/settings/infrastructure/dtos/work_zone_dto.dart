import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/work_zone.dart';

part 'work_zone_dto.freezed.dart';
part 'work_zone_dto.g.dart';

@Freezed(toJson: true)
@immutable
abstract class WorkZoneDto with _$WorkZoneDto {
  const factory WorkZoneDto({
    required Map<String, dynamic> center, // GeoFirePoint's `.data`
    required double radiusKm,
  }) = _WorkZoneDto;

  factory WorkZoneDto.fromDomain(WorkZone zone) => WorkZoneDto(
        center: zone.center.data,
        radiusKm: zone.radiusKm,
      );

  factory WorkZoneDto.fromJson(Map<String, dynamic> json) =>
      _$WorkZoneDtoFromJson(json);
}
