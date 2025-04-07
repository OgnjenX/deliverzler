// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_hours_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkHoursDto _$WorkHoursDtoFromJson(Map<String, dynamic> json) =>
    _WorkHoursDto(
      selectedDays: Map<String, bool>.from(json['selectedDays'] as Map),
      startTimes: Map<String, String?>.from(json['startTimes'] as Map),
      endTimes: Map<String, String?>.from(json['endTimes'] as Map),
      timeZone: json['timeZone'] as String,
    );

Map<String, dynamic> _$WorkHoursDtoToJson(_WorkHoursDto instance) =>
    <String, dynamic>{
      'selectedDays': instance.selectedDays,
      'startTimes': instance.startTimes,
      'endTimes': instance.endTimes,
      'timeZone': instance.timeZone,
    };
