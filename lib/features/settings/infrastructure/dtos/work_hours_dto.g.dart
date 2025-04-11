// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_hours_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkHoursDto _$WorkHoursDtoFromJson(Map<String, dynamic> json) =>
    _WorkHoursDto(
      days: (json['days'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as Map<String, dynamic>?)?.map(
              (k, e) => MapEntry(k, e as String),
            )),
      ),
      timeZone: json['timeZone'] as String,
    );

Map<String, dynamic> _$WorkHoursDtoToJson(_WorkHoursDto instance) =>
    <String, dynamic>{
      'days': instance.days,
      'timeZone': instance.timeZone,
    };
