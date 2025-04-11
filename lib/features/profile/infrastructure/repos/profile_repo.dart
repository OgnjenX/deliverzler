import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../settings/domain/work_hours.dart';
import '../../../settings/domain/work_zone.dart';
import '../../../settings/infrastructure/dtos/work_hours_dto.dart';
import '../../../settings/infrastructure/dtos/work_zone_dto.dart';
import '../../domain/profile_details.dart';
import '../data_sources/profile_remote_data_source.dart';
import '../dtos/profile_details_dto.dart';

part 'profile_repo.g.dart';

@Riverpod(keepAlive: true)
ProfileRepo profileRepo(Ref ref) {
  return ProfileRepo(
    remoteDataSource: ref.watch(profileRemoteDataSourceProvider),
  );
}

class ProfileRepo {
  ProfileRepo({required this.remoteDataSource});

  final ProfileRemoteDataSource remoteDataSource;

  Future<String> uploadProfileImage(File imageFile) async {
    final imageUrl = await remoteDataSource.uploadProfileImage(imageFile);
    return imageUrl;
  }

  // TODO(Ahmed): updated cached image
  Future<void> updateProfileImage(String imageUrl) async {
    await remoteDataSource.updateProfileImage(imageUrl);
  }

  Future<void> updateWorkHours(
    Map<String, bool> selectedDays,
    Map<String, TimeOfDay?> startTimes,
    Map<String, TimeOfDay?> endTimes,
    String timeZone,
  ) async {
    // Convert the separate maps to our new compact format
    final days = <String, DaySchedule?>{};

    // Process each day
    for (final day in selectedDays.keys) {
      final isSelected = selectedDays[day] ?? false;
      final startTime = startTimes[day];
      final endTime = endTimes[day];

      // Only include days that are selected and have both start and end times
      if (isSelected && startTime != null && endTime != null) {
        days[day] = DaySchedule(start: startTime, end: endTime);
      }
      // If not selected or missing times, we simply don't add this day
    }

    // Create a WorkHours object
    final workHours = WorkHours(days: days, timeZone: timeZone);

    // Create a DTO to send to the remote data source
    final workHoursDto = WorkHoursDto.fromDomain(workHours);

    // Call remote data source to update the work hours
    await remoteDataSource.updateWorkHours(workHoursDto);
  }

  Future<WorkHours?> getWorkHours() async {
    final workHoursDto = await remoteDataSource.getWorkHours();
    if (workHoursDto != null) {
      return WorkHours.fromDto(workHoursDto);
    }
    return null; // Return null if workHoursDto is null
  }

  Future<void> updateWorkZone(WorkZone zone) async {
    final dto = WorkZoneDto.fromDomain(zone);
    await remoteDataSource.updateWorkZone(dto);
  }

  Future<WorkZone?> getWorkZone() async {
    final dto = await remoteDataSource.getWorkZone();
    if (dto != null) {
      return WorkZone.fromDto(dto);
    }
    return null;
  }

  Future<void> updateProfileData(ProfileDetails params) async {
    final profileDto = ProfileDetailsDto.fromDomain(params);
    await remoteDataSource.updateProfileData(profileDto);
  }
}
