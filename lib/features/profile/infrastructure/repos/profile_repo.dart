import 'dart:io';

import 'package:flutter/material.dart';

import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../../utils.dart';
import '../../../settings/infrastructure/dtos/work_hours_dto.dart';
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
    // Create a DTO to send to the remote data source
    final workHoursDto = WorkHoursDto(
      selectedDays: selectedDays,
      startTimes: startTimes.map((key, value) =>
          MapEntry(key, value != null ? formatTimeOfDay(value) : null)),
      endTimes: endTimes.map((key, value) =>
          MapEntry(key, value != null ? formatTimeOfDay(value) : null)),
      timeZone: timeZone,
    );

    // Call remote data source to update the work hours
    await remoteDataSource.updateWorkHours(workHoursDto);
  }

  Future<void> updateProfileData(ProfileDetails params) async {
    final profileDto = ProfileDetailsDto.fromDomain(params);
    await remoteDataSource.updateProfileData(profileDto);
  }
}
