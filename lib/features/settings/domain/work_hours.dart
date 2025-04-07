import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils.dart';
import '../infrastructure/dtos/work_hours_dto.dart';

part 'work_hours.freezed.dart';

@freezed
abstract class WorkHours with _$WorkHours {
  const factory WorkHours({
    required Map<String, bool> selectedDays, // Days of the week (Mon-Sun)
    required Map<String, TimeOfDay?> startTimes, // Start time for each day
    required Map<String, TimeOfDay?> endTimes, // End time for each day
    required String timeZone, // Time zone information
  }) = _WorkHours;

  // Factory constructor to create WorkHours from WorkHoursDto
  factory WorkHours.fromDto(WorkHoursDto dto) {
    return WorkHours(
      selectedDays: dto.selectedDays,
      startTimes: dto.startTimes.map(
        (key, value) =>
            MapEntry(key, value != null ? parseTimeOfDay(value) : null),
      ),
      endTimes: dto.endTimes.map(
        (key, value) =>
            MapEntry(key, value != null ? parseTimeOfDay(value) : null),
      ),
      timeZone: dto.timeZone,
    );
  }
}
