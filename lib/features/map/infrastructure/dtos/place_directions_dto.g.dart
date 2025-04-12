// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_directions_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlaceDirectionsDto _$PlaceDirectionsDtoFromJson(Map<String, dynamic> json) =>
    _PlaceDirectionsDto(
      bounds: _fromJsonBounds(json['bounds'] as Map<String, dynamic>),
      polylinePoints: _fromJsonPolylinePoints(
          json['overview_polyline'] as Map<String, dynamic>),
      distance: (_readDistance(json, 'distance') as num).toInt(),
      duration: _readDuration(json, 'duration') as String,
      durationValue: (_readDurationValue(json, 'durationValue') as num).toInt(),
    );

Map<String, dynamic> _$PlaceDirectionsQueryDtoToJson(
        _PlaceDirectionsQueryDto instance) =>
    <String, dynamic>{
      'origin': _toJsonOrigin(instance.origin),
      'destination': _toJsonDestination(instance.destination),
    };
