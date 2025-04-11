import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils.dart';
import '../infrastructure/dtos/work_hours_dto.dart';

part 'work_hours.freezed.dart';

@freezed
abstract class WorkHours with _$WorkHours {
  const factory WorkHours({
    required Map<String, DaySchedule?> days, // Map of day name to schedule
    required String timeZone, // Time zone information
  }) = _WorkHours;

  // Private constructor required for getters
  const WorkHours._();

  // Factory constructor to create WorkHours from WorkHoursDto
  factory WorkHours.fromDto(WorkHoursDto dto) {
    final days = <String, DaySchedule?>{};

    // Convert from DTO format to domain model
    for (final day in dto.days.keys) {
      final dayData = dto.days[day];
      if (dayData != null) {
        days[day] = DaySchedule(
          start: parseTimeOfDay(dayData['start']!),
          end: parseTimeOfDay(dayData['end']!),
        );
      }
      // If dayData is null, we simply don't add this day to the map
    }

    return WorkHours(
      days: days,
      timeZone: dto.timeZone,
    );
  }

  // Helper method to check if a day is selected
  bool isDaySelected(String day) => days.containsKey(day);

  // Get all selected days
  Map<String, bool> get selectedDays {
    final result = <String, bool>{
      'Mon': false,
      'Tue': false,
      'Wed': false,
      'Thu': false,
      'Fri': false,
      'Sat': false,
      'Sun': false,
    };

    // Only days that exist in the map are selected
    for (final day in days.keys) {
      result[day] = true;
    }

    return result;
  }

  // Get start times for all days
  Map<String, TimeOfDay?> get startTimes {
    final result = <String, TimeOfDay?>{
      'Mon': null,
      'Tue': null,
      'Wed': null,
      'Thu': null,
      'Fri': null,
      'Sat': null,
      'Sun': null,
    };

    // Only set times for days that exist in the map
    for (final day in days.keys) {
      result[day] = days[day]?.start;
    }

    return result;
  }

  // Get end times for all days
  Map<String, TimeOfDay?> get endTimes {
    final result = <String, TimeOfDay?>{
      'Mon': null,
      'Tue': null,
      'Wed': null,
      'Thu': null,
      'Fri': null,
      'Sat': null,
      'Sun': null,
    };

    // Only set times for days that exist in the map
    for (final day in days.keys) {
      result[day] = days[day]?.end;
    }

    return result;
  }
}

// Class to represent a day's schedule with start and end times
class DaySchedule {
  const DaySchedule({required this.start, required this.end});

  final TimeOfDay start;
  final TimeOfDay end;
}
