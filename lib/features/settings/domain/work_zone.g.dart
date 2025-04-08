// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_zone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkZone _$WorkZoneFromJson(Map<String, dynamic> json) => _WorkZone(
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      radiusKm: (json['radiusKm'] as num).toDouble(),
    );

Map<String, dynamic> _$WorkZoneToJson(_WorkZone instance) => <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'radiusKm': instance.radiusKm,
    };
