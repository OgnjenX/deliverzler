import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils.dart';
import '../../domain/work_hours.dart';

part 'work_hours_dto.freezed.dart';
part 'work_hours_dto.g.dart'; // Add this part for json_serializable

@Freezed(toJson: true)
@immutable
abstract class WorkHoursDto with _$WorkHoursDto {
  const factory WorkHoursDto({
    required Map<String, bool> selectedDays,
    required Map<String, String?> startTimes, // Start times as "HH:mm"
    required Map<String, String?> endTimes, // End times as "HH:mm"
    required String timeZone,
  }) = _WorkHoursDto;

  factory WorkHoursDto.fromDomain(WorkHours details) {
    return WorkHoursDto(
      selectedDays: details.selectedDays,
      startTimes: details.startTimes.map(
        (key, value) =>
            MapEntry(key, value != null ? formatTimeOfDay(value) : null),
      ),
      endTimes: details.endTimes.map(
        (key, value) =>
            MapEntry(key, value != null ? formatTimeOfDay(value) : null),
      ),
      timeZone: details.timeZone,
    );
  }

  // JSON serialization
  factory WorkHoursDto.fromJson(Map<String, dynamic> json) =>
      _$WorkHoursDtoFromJson(json);
}
