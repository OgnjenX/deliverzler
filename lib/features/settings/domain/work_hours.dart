import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/value_validators.dart';

part 'work_hours.freezed.dart';

@freezed
abstract class WorkHours with _$WorkHours {
  const factory WorkHours({
    required Map<String, bool> selectedDays, // Days of the week (Mon-Sun)
    required Map<String, TimeOfDay?> startTimes, // Start time for each day
    required Map<String, TimeOfDay?> endTimes, // End time for each day
    required String timeZone, // Time zone information
  }) = _WorkHours;

  // Validator to check the name (for validation example)
  static FormFieldValidator<String?> validateName(BuildContext context) =>
      ValueValidators.validateName(context);

  // Validator for phone number (not related to work hours, but for demonstration)
  static FormFieldValidator<String?> validateMobile(BuildContext context) =>
      ValueValidators.validateMobileNumber(context);
}
