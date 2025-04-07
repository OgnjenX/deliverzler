import 'dart:io';

import '../../../../auth/presentation/providers/auth_state_provider.dart';
import '../../../../core/infrastructure/network/main_api/api_callers/firebase_firestorage_facade.dart';
import '../../../../core/infrastructure/network/main_api/api_callers/firebase_firestore_facade.dart';
import '../../../../core/presentation/utils/riverpod_framework.dart';
import '../../../settings/infrastructure/dtos/work_hours_dto.dart';
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
      path: userDocPath(uid),  // Save work hours under the user
      data: {'work_hours': workHoursDto.toJson()},
      merge: true,  // Ensure we don't overwrite other fields
    );
  }
}
