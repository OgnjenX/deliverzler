// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_zone.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkZone _$WorkZoneFromJson(Map<String, dynamic> json) => _WorkZone(
      center: const GeoFirePointConverter()
          .fromJson(json['center'] as Map<String, dynamic>),
      radiusKm: (json['radiusKm'] as num).toDouble(),
    );

Map<String, dynamic> _$WorkZoneToJson(_WorkZone instance) => <String, dynamic>{
      'center': const GeoFirePointConverter().toJson(instance.center),
      'radiusKm': instance.radiusKm,
    };
