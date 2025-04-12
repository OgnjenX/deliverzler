import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/profile_details.dart';

part 'profile_details_dto.freezed.dart';
part 'profile_details_dto.g.dart';

@Freezed(toJson: true)
abstract class ProfileDetailsDto with _$ProfileDetailsDto {
  const factory ProfileDetailsDto({
    required String name,
    required String phone,
    @Default('available') String delivererStatus,
    int? estimatedDeliveryCompletionTime,
  }) = _ProfileDetailsDto;

  factory ProfileDetailsDto.fromDomain(ProfileDetails details) {
    return ProfileDetailsDto(
      name: details.name,
      phone: details.phone,
      delivererStatus: details.delivererStatus.jsonValue,
      estimatedDeliveryCompletionTime:
          details.estimatedDeliveryCompletionTime?.millisecondsSinceEpoch,
    );
  }
}
