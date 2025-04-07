import 'package:flutter/material.dart';

/// Helper function to format TimeOfDay to "HH:mm"
String formatTimeOfDay(TimeOfDay time) {
  final hours = time.hour.toString().padLeft(2, '0');
  final minutes = time.minute.toString().padLeft(2, '0');
  return '$hours:$minutes';
}
