import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../utils.dart';
import '../../domain/work_hours.dart';

part 'work_hours_dto.freezed.dart';
part 'work_hours_dto.g.dart'; // Add this part for json_serializable

@Freezed(toJson: true)
@immutable
abstract class WorkHoursDto with _$WorkHoursDto {
  const factory WorkHoursDto({
    required Map<String, Map<String, String>?>
        days, // Map of day name to schedule with start/end times
    required String timeZone,
  }) = _WorkHoursDto;

  factory WorkHoursDto.fromDomain(WorkHours details) {
    final days = <String, Map<String, String>?>{};

    // Convert each day's schedule to the DTO format
    for (final day in details.days.keys) {
      final daySchedule = details.days[day];
      if (daySchedule != null) {
        days[day] = {
          'start': formatTimeOfDay(daySchedule.start),
          'end': formatTimeOfDay(daySchedule.end),
        };
      }
      // If daySchedule is null, we simply don't add this day to the map
    }

    return WorkHoursDto(
      days: days,
      timeZone: details.timeZone,
    );
  }

  // JSON serialization
  factory WorkHoursDto.fromJson(Map<String, dynamic> json) =>
      _$WorkHoursDtoFromJson(json);
}
