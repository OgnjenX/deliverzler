// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_zone_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkZoneDto _$WorkZoneDtoFromJson(Map<String, dynamic> json) => _WorkZoneDto(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      radiusKm: (json['radiusKm'] as num).toDouble(),
    );

Map<String, dynamic> _$WorkZoneDtoToJson(_WorkZoneDto instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'radiusKm': instance.radiusKm,
    };
