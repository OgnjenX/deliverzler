// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_zone_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkZoneDto _$WorkZoneDtoFromJson(Map<String, dynamic> json) => _WorkZoneDto(
      center: json['center'] as Map<String, dynamic>,
      radiusKm: (json['radiusKm'] as num).toDouble(),
    );

Map<String, dynamic> _$WorkZoneDtoToJson(_WorkZoneDto instance) =>
    <String, dynamic>{
      'center': instance.center,
      'radiusKm': instance.radiusKm,
    };
