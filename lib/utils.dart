import 'package:flutter/material.dart';

/// Helper function to format TimeOfDay to "HH:mm"
String formatTimeOfDay(TimeOfDay time) {
  final hours = time.hour.toString().padLeft(2, '0');
  final minutes = time.minute.toString().padLeft(2, '0');
  return '$hours:$minutes';
}

TimeOfDay parseTimeOfDay(String timeString) {
  final timeParts = timeString.split(':');
  final hour = int.parse(timeParts[0]);
  final minute = int.parse(timeParts[1]);
  return TimeOfDay(hour: hour, minute: minute);
}
