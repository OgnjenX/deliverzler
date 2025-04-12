import 'dart:io';

import 'package:flutter/foundation.dart';

import '../../../../auth/presentation/providers/auth_state_provider.dart';
import '../../../../core/infrastructure/network/main_api/api_callers/firebase_firestorage_facade.dart';
import '../../../../core/infrastructure/network/main_api/api_callers/firebase_firestore_facade.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../home/domain/value_objects.dart';
import '../../../settings/infrastructure/dtos/work_hours_dto.dart';
import '../../../settings/infrastructure/dtos/work_zone_dto.dart';
import '../dtos/profile_details_dto.dart';

part 'profile_remote_data_source.g.dart';

@Riverpod(keepAlive: true)
ProfileRemoteDataSource profileRemoteDataSource(Ref ref) {
  return ProfileRemoteDataSource(
    ref,
    firebaseFirestore: ref.watch(firebaseFirestoreFacadeProvider),
    firebaseStorage: ref.watch(firebaseStorageFacadeProvider),
  );
}

class ProfileRemoteDataSource {
  ProfileRemoteDataSource(
    this.ref, {
    required this.firebaseFirestore,
    required this.firebaseStorage,
  });

  final Ref ref;
  final FirebaseFirestoreFacade firebaseFirestore;
  final FirebaseStorageFacade firebaseStorage;

  static const String usersCollectionPath = 'Deliverers';

  static String userDocPath(String uid) => '$usersCollectionPath/$uid';

  static const String usersStorageFolderPath = 'Deliverers';

  static String userStorageFolderPath(String uid) =>
      '$usersStorageFolderPath/$uid';

  Future<String> uploadProfileImage(File imageFile) async {
    final uid = ref.read(currentUserProvider).id;
    final imageUrl = await firebaseStorage.uploadImage(
      path: '${userStorageFolderPath(uid)}/$uid',
      file: imageFile,
    );
    return imageUrl;
  }

  Future<void> updateProfileImage(String imageUrl) async {
    final uid = ref.read(currentUserProvider).id;
    return firebaseFirestore.setData(
      path: userDocPath(uid),
      data: {'image': imageUrl},
      merge: true,
    );
  }

  Future<void> updateProfileData(ProfileDetailsDto params) async {
    final uid = ref.read(currentUserProvider).id;
    return firebaseFirestore.setData(
      path: userDocPath(uid),
      data: params.toJson(),
      merge: true,
    );
  }

  Future<void> updateWorkHours(WorkHoursDto workHoursDto) async {
    final uid = ref.read(currentUserProvider).id;

    // Store the work hours data for the user
    return firebaseFirestore.setData(
      path: userDocPath(uid), // Save work hours under the user
      data: {'work_hours': workHoursDto.toJson()},
      merge: true, // Ensure we don't overwrite other fields
    );
  }

  Future<WorkHoursDto?> getWorkHours() async {
    final uid = ref.read(currentUserProvider).id;

    try {
      // Fetch the document for the user
      final doc = await firebaseFirestore.getData(path: userDocPath(uid));

      // Check if 'work_hours' exists and is of the expected type
      if (doc['work_hours'] != null) {
        final workHoursMap = doc['work_hours'] as Map<String, dynamic>;

        // Return the WorkHoursDto created from the map
        return WorkHoursDto.fromJson(workHoursMap);
      }
    } catch (e) {
      // Log the error or handle it as needed
      if (kDebugMode) {
        print('Error fetching work hours: $e');
      }
    }

    // Return null if no work hours found or if an error occurs
    return null;
  }

  Future<void> updateWorkZone(WorkZoneDto workZoneDto) async {
    final uid = ref.read(currentUserProvider).id;

    return firebaseFirestore.setData(
      path: userDocPath(uid),
      data: {'work_zone': workZoneDto.toJson()},
      merge: true,
    );
  }

  Future<WorkZoneDto?> getWorkZone() async {
    final uid = ref.read(currentUserProvider).id;

    try {
      final doc = await firebaseFirestore.getData(path: userDocPath(uid));

      if (doc['work_zone'] != null) {
        final workZoneMap = doc['work_zone'] as Map<String, dynamic>;
        return WorkZoneDto.fromJson(workZoneMap);
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching work zone: $e');
      }
    }

    return null;
  }

  // Updates the deliverer's status (available, onDelivery, offline)
  Future<void> updateDelivererStatus(DelivererStatus status) async {
    final uid = ref.read(currentUserProvider).id;

    return firebaseFirestore.setData(
      path: userDocPath(uid),
      data: {'deliverer_status': status.jsonValue},
      merge: true,
    );
  }

  // Updates the estimated completion time for the current delivery
  Future<void> updateEstimatedCompletionTime(
      DateTime? estimatedCompletionTime,) async {
    final uid = ref.read(currentUserProvider).id;

    final data = estimatedCompletionTime != null
        ? {
            'estimated_completion_time':
                estimatedCompletionTime.millisecondsSinceEpoch,
          }
        : {'estimated_completion_time': null};

    return firebaseFirestore.setData(
      path: userDocPath(uid),
      data: data,
      merge: true,
    );
  }

  // Updates both status and estimated completion time in a single operation
  Future<void> updateDelivererAvailability({
    required DelivererStatus status,
    DateTime? estimatedCompletionTime,
  }) async {
    final uid = ref.read(currentUserProvider).id;

    final data = {
      'deliverer_status': status.jsonValue,
      'estimated_completion_time':
          estimatedCompletionTime?.millisecondsSinceEpoch,
    };

    return firebaseFirestore.setData(
      path: userDocPath(uid),
      data: data,
      merge: true,
    );
  }

  // Gets the current status and estimated completion time
  Future<Map<String, dynamic>> getDelivererAvailability() async {
    final uid = ref.read(currentUserProvider).id;

    try {
      final doc = await firebaseFirestore.getData(path: userDocPath(uid));

      final statusValue = doc['deliverer_status'] as String? ?? 'available';
      final status = DelivererStatus.values.firstWhere(
        (s) => s.jsonValue == statusValue,
        orElse: () => DelivererStatus.available,
      );

      final completionTimeMillis = doc['estimated_completion_time'] as int?;
      final completionTime = completionTimeMillis != null
          ? DateTime.fromMillisecondsSinceEpoch(completionTimeMillis)
          : null;

      return {
        'status': status,
        'estimatedCompletionTime': completionTime,
      };
    } catch (e) {
      if (kDebugMode) {
        print('Error fetching deliverer availability: $e');
      }
      return {
        'status': DelivererStatus.available,
        'estimatedCompletionTime': null,
      };
    }
  }
}
